<?php
/*------------------------------------------------------------------------
 # Yt Mega News II - Version 1.0
 # Copyright (C) 2009-2011 The YouTech Company. All Rights Reserved.
 # @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 # Author: The YouTech Company
 # Websites: http://www.ytcvn.com
 -------------------------------------------------------------------------*/
 
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

if (!class_exists('YtMegaIINewsReader')){
	class YtMegaIINewsReader{
		public function __construct(){
			class_exists('ContentHelperRoute') or include_once JPATH_SITE . DS . 'components' . DS . 'com_content' . DS . 'helpers' . DS . 'route.php';
			class_exists('YtUtils') or include_once 'ytutils.php';
		}
		public function getList(&$params){
			$sections 	= array();
			$categories = array();
			
			$user 		=&	JFactory::getUser();
			$app 		=&	JFactory::getApplication();
			$db   		=&	JFactory::getDBO();
			$jnow		=& 	JFactory::getDate();
			$now		= 	$jnow->toMySQL();
			$nullDate	=	$db->getNullDate();
			$noauth		= !	$app->getParams()->get('show_noauth');
			
			$secs = array();
			$cats = array();
			if (!isset($params->source) || empty($params->source)){
				return $sections;
			} else if ( !is_array($params->source) ){
				$params->source = array($params->source);
			}
			foreach ($params->source as $elem){
				preg_match("/([\d]+)_([\d]+)/", $elem, $m);
				if (isset($m) && count($m)==3){
					if (!isset($cats[$m[1]])){
						$cats[$m[1]] = $m[1];
					}
					if (!isset($secs[$m[2]])){
						$secs[$m[2]] = $m[2];
					}
				}
			}
			$in_secs = implode(",", $secs);
			$in_cats = implode(",", $cats);
			if ($noauth){
				$accessid 	= $user->get('aid', 0);
				$authorize	= "AND s.access <= $accessid AND cc.access <= $accessid";
			} else {
				$authorize 	= "";
			}
						
			if ( isset($params->source_filter) ){
				// frontpage filter.
				switch ($params->source_filter){
					default:
					case '0':
						$sfilter = "";
						$sfilterwhere = "";
						break;
					case '1':
						//$query .= " AND a.id NOT IN ( SELECT content_id FROM #__content_frontpage )";
						$sfilter = "LEFT JOIN #__content_frontpage as f ON a.id=f.content_id";
						$sfilterwhere = " AND f.content_id IS NULL";
						break;
					case '2':
						//$query .= " AND a.id IN ( SELECT content_id FROM #__content_frontpage )";
						$sfilter = "INNER JOIN #__content_frontpage as f ON a.id=f.content_id";
						$sfilterwhere = "";// AND f.content_id=a.id";
						break;
				}
			}
			$query =
				"
				SELECT
					a.id, a.title, a.introtext, a.fulltext,
					a.sectionid, a.catid, a.created, a.modified, a.hits,
					CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(':', a.id, a.alias) ELSE a.id END as slug,
					CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(':', cc.id, cc.alias) ELSE cc.id END as catslug,
					CHAR_LENGTH( a.fulltext ) AS readmore,
					DATEDIFF(NOW(), a.created) as datediff,
					cc.title AS category_title,
					s.title AS section_title,
					ROUND( v.rating_sum / v.rating_count ) AS rating, v.rating_count
				FROM #__content AS a
					INNER JOIN #__categories AS cc ON cc.id = a.catid
					LEFT JOIN #__sections AS s ON s.id = a.sectionid
					LEFT JOIN #__content_rating AS v ON a.id = v.content_id
					$sfilter
				WHERE
					s.id IN ($in_secs) AND cc.id IN ($in_cats)
					$authorize
					AND s.published = 1 AND cc.published = 1
					AND a.state >= 0
					AND ( a.publish_up = {$db->Quote($nullDate)} OR a.publish_up <= {$db->Quote($now)} )
					AND ( a.publish_down = {$db->Quote($nullDate)} OR a.publish_down >= {$db->Quote($now)} )
					$sfilterwhere
				";
			
			if ( isset($params->source_order_by) ){
				switch ($params->source_order_by){
					default:
					case 'ordering':
						$query .= " ORDER BY s.ordering, cc.ordering, a.ordering";
						break;
					case 'hits':
						$query .= " ORDER BY s.ordering, cc.ordering, a.hits DESC";
						break;
					case 'created':
						$query .= " ORDER BY s.ordering, cc.ordering, a.created DESC";
						break;
					case 'modified':
						$query .= " ORDER BY s.ordering, cc.ordering, modified DESC";
						break;
					case 'title':
						$query .= " ORDER BY s.ordering, cc.ordering, a.title";
						break;
					case 'random':
						$query .= " ORDER BY s.ordering, cc.ordering, rand()";
						break;
				}
			}
			
			$db->setQuery($query);
			$rows = $db->loadObjectList();
			if (!isset($rows) || count($rows)<=0){
				return $sections;
			}
			
			// $customUrl 	= $this->_getCustomUrl( $params->custom_urls );
			
			// prepare for image resize.
			$imgResizeConfig = array(
				'background' => $params->item_thumbnail_background,
				'thumbnail_mode' => $params->item_thumbnail_mode
			);
			YtUtils::getImageResizerHelper($imgResizeConfig);
			
			$max_in_category = $params->articles_max;
			foreach ($rows as $k => $row){
				$sid =& $row->sectionid;
				$cid =& $row->catid;
				$rid =& $row->id;
				if (!isset($sections[$sid])){
					$sections[$sid] = new stdClass();
					$sections[$sid]->id = $sid;
					if (isset($customUrl['section'][$sid])){
						$sections[$sid]->url = $customUrl['section'][$sid];
					} else {
						$sections[$sid]->url = JRoute::_( ContentHelperRoute::getSectionRoute($sid) );
					}
					$sections[$sid]->title = $row->section_title;
					$sections[$sid]->child = array();
				}
				if (!isset($categories[$cid])){
					$categories[$cid] = new stdClass();
					$categories[$cid]->id = $cid;
					if (isset($customUrl['category'][$cid])){
						$categories[$cid]->url = $customUrl['category'][$cid];
					} else {
						$categories[$cid]->url = JRoute::_( ContentHelperRoute::getCategoryRoute($cid, $sid) );
					}
					$categories[$cid]->title = YtUtils::shorten($row->category_title, $params->sub_category_title_maxchars);
					$categories[$cid]->child = array();
					$sections[$sid]->child[$cid] =& $categories[$cid];
				}
				if ( $max_in_category>0 && count($categories[$cid]->child) >= $max_in_category ){
					continue;
				}
				$categories[$cid]->child[$rid] =& $rows[$k];
				
				$rows[$k]->id;
				
				$rows[$k]->full_title = $rows[$k]->title;
				$rows[$k]->title = YtUtils::shorten($row->title, $params->item_title_maxchars);
				
				$rows[$k]->description = $row->introtext;
				
				$rows[$k]->image_urls = YtUtils::extractImages(& $rows[$k]->description);
				
				$rows[$k]->url = JRoute::_( ContentHelperRoute::getArticleRoute($row->id, $cid, $sid) );
				if ('none' == $params->item_thumbnail_mode){
					$rows[$k]->image = empty($rows[$k]->image_urls) ? false : $rows[$k]->image_urls[0];
				} else {
					$rows[$k]->image = empty($rows[$k]->image_urls) ? false : $rows[$k]->image_urls[0];
					if (false != $rows[$k]->image && !YtUtils::isUrl($rows[$k]->image)){
						$imagefile = JPath::find(JPATH_SITE, $rows[$k]->image);
						$rows[$k]->image = YtUtils::resize($imagefile, $params->item_thumbnail_width, $params->item_thumbnail_height, $params->item_thumbnail_mode);
					}
				}
				$rows[$k]->description = YtUtils::shorten($rows[$k]->description, $params->item_description_maxchars);
				
				if ($params->item_description_keephtml == 0){
					$rows[$k]->description = strip_tags($rows[$k]->description);
				}
				$rows[$k]->comments = 0;
				switch ($rows[$k]->datediff){
					case 0:
						$rows[$k]->createdfrom = YtUtils::getDateAgo($rows[$k]->created);
						break;
					default:
						$rows[$k]->createdfrom = JHTML::_('date', $rows[$k]->created, JText::_('DATE_FORMAT'));
				}
			}
			
			return $sections;
		}
	}
}