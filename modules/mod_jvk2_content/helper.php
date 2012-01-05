<?php 
/*
// "K2 Content" Module by JoomlaWorks for Joomla! 1.5.x - Version 2.1
// Copyright (c) 2006 - 2009 JoomlaWorks Ltd. All rights reserved.
// Released under the GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
// More info at http://www.joomlaworks.gr and http://k2.joomlaworks.gr
// Designed and developed by the JoomlaWorks team
// *** Last update: September 9th, 2009 ***
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

require_once (JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'helpers'.DS.'route.php');
require_once (JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'helpers'.DS.'utilities.php');

class modjvK2ContentHelper {

  function getItems(&$params) {
  
    jimport('joomla.filesystem.file');
    $limit = $params->get('items_limit', 5);
    $cid = $params->get('category_id', NULL);
    $ordering = $params->get('itemsOrdering');
    $componentParams = &JComponentHelper::getParams('com_k2');
    $limitstart = JRequest::getInt('limitstart');
    
    $user = &JFactory::getUser();
    $aid = $user->get('aid');
    $db = &JFactory::getDBO();
    
    $jnow = &JFactory::getDate();
    $now = $jnow->toMySQL();
    $nullDate = $db->getNullDate();
    
    $query = "SELECT i.*, c.name AS categoryname,c.id AS categoryid, c.alias AS categoryalias, c.params AS categoryparams";
    if ($ordering == 'best')
      $query .= ", (r.rating_sum/r.rating_count) AS rating";
      
    $query .= " FROM #__k2_items as i LEFT JOIN #__k2_categories c ON c.id = i.catid";
    
    if ($ordering == 'best')
      $query .= " LEFT JOIN #__k2_rating r ON r.itemID = i.id";
      
    $query .= " WHERE i.published = 1 AND i.access <= {$aid} AND i.trash = 0 AND c.published = 1 AND c.access <= {$aid} AND c.trash = 0";
    
    $query .= " AND ( i.publish_up = ".$db->Quote($nullDate)." OR i.publish_up <= ".$db->Quote($now)." )";
    $query .= " AND ( i.publish_down = ".$db->Quote($nullDate)." OR i.publish_down >= ".$db->Quote($now)." )";
    
    if ($params->get('catfilter')) {
      if (!is_null($cid)) {
        if (is_array($cid)) {
          if ($params->get('getChildren')) {
          
            require_once (JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'models'.DS.'itemlist.php');
            $allChildren = array();
            foreach ($cid as $id) {
              $categories = K2ModelItemlist::getCategoryChilds($id);
              $categories[] = $id;
              $categories = @array_unique($categories);
              $allChildren = @array_merge($allChildren, $categories);
            }
            
            $allChildren = @array_unique($allChildren);
            $sql = @implode(',', $allChildren);
            $query .= " AND i.catid IN ({$sql})";
            
          } else {
            $query .= " AND i.catid IN(".implode(',', $cid).")";
          }
          
        } else {
          if ($params->get('getChildren')) {
            require_once (JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'models'.DS.'itemlist.php');
            $categories = K2ModelItemlist::getCategoryChilds($cid);
            $categories[] = $cid;
            $categories = @array_unique($categories);
            $sql = @implode(',', $categories);
            $query .= " AND i.catid IN ({$sql})";
          } else {
            $query .= " AND i.catid={$cid}";
          }
          
        }
      }
    }
    
    if ($params->get('FeaturedItems') == '0')
      $query .= " AND i.featured != 1";
      
    if ($params->get('FeaturedItems') == '2')
      $query .= " AND i.featured = 1";
      
    switch ($ordering) {
    
      case 'date':
        $orderby = 'i.created ASC';
        break;
        
      case 'rdate':
        $orderby = 'i.created DESC';
        break;
        
      case 'alpha':
        $orderby = 'i.title';
        break;
        
      case 'ralpha':
        $orderby = 'i.title DESC';
        break;
        
      case 'order':
        if ($params->get('FeaturedItems') == '2')
          $orderby = 'i.featured_ordering';
        else
          $orderby = 'i.ordering';
        break;
        
      case 'hits':
        $orderby = 'i.hits DESC';
        break;
        
      case 'rand':
        $orderby = 'RAND()';
        break;
        
      case 'best':
        $orderby = 'rating DESC';
        break;
        
      default:
        $orderby = 'i.id DESC';
        break;
    }
    
    $query .= " ORDER BY ".$orderby;
    $db->setQuery($query, 0, $limit);
    $items = $db->loadObjectList();
    
    require_once (JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'models'.DS.'item.php');
    $model = new K2ModelItem;
    
    if (count($items)) {
    
      foreach ($items as $item) {
      
        //Images
        if ($params->get('itemImage')) {
        
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_XS.jpg'))
            $item->imageXSmall = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_XS.jpg';
            
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_S.jpg'))
            $item->imageSmall = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_S.jpg';
            
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_M.jpg'))
            $item->imageMedium = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_M.jpg';
            
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_L.jpg'))
            $item->imageLarge = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_L.jpg';
            
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_XL.jpg'))
            $item->imageXLarge = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_XL.jpg';
            
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_Generic.jpg'))
            $item->imageGeneric = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_Generic.jpg';
            
          $image = 'image'.$params->get('itemImgSize');
          if (isset($item->$image))
            $item->image = $item->$image;
            
        }
        
        //Read more link
        $item->link = urldecode(JRoute::_(K2HelperRoute::getItemRoute($item->id.':'.urlencode($item->alias), $item->catid.':'.urlencode($item->categoryalias))));
        
        //Tags
        if ($params->get('itemTags')) {
          $tags = $model->getItemTags($item->id);
          for ($i = 0; $i < sizeof($tags); $i++) {
            $tags[$i]->link = JRoute::_(K2HelperRoute::getTagRoute($tags[$i]->name));
          }
          $item->tags = $tags;
        }
        
        //Category link
        if ($params->get('itemCategory'))
          $item->categoryLink = urldecode(JRoute::_(K2HelperRoute::getCategoryRoute($item->catid.':'.urlencode($item->categoryalias))));
          
        //Extra fields
        if ($params->get('itemExtraFields')) {
          $item->extra_fields = $model->getItemExtraFields($item->extra_fields);
        }
        
        //Comments counter
        if ($params->get('itemCommentsCounter'))
          $item->numOfComments = $model->countItemComments($item->id);
          
        //Attachments
        if ($params->get('itemAttachments'))
          $item->attachments = $model->getItemAttachments($item->id);
          
        //Video
        if ($params->get('itemVideo')) {
          $dispatcher = &JDispatcher::getInstance();
          JPluginHelper::importPlugin('content', 'jw_allvideos');
          $params->set('vfolder', 'media/k2/videos');
          $item->text = $item->video;
          $dispatcher->trigger('onPrepareContent', array(&$item, $params, $limitstart));
          $item->video = $item->text;
        }
        
        // Introtext
        $item->text = '';
        if ($params->get('itemIntroText')) {
          // Word limit
          if ($params->get('itemIntroTextWordLimit')) {
            $item->text .= K2HelperUtilities::wordLimit($item->introtext, $params->get('itemIntroTextWordLimit'));
          } else {
            $item->text .= $item->introtext;
          }
        }

		
        
        //Plugins
        $dispatcher = &JDispatcher::getInstance();
        JPluginHelper::importPlugin('content');
        
        $params->set('parsedInModule', 1); // for plugins to know when they are parsed inside this module
        
        $results = $dispatcher->trigger('onBeforeDisplay', array(&$item, $params, $limitstart));
        $item->event->BeforeDisplay = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onAfterDisplay', array(&$item, $params, $limitstart));
        $item->event->AfterDisplay = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onAfterDisplayTitle', array(&$item, $params, $limitstart));
        $item->event->AfterDisplayTitle = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onBeforeDisplayContent', array(&$item, $params, $limitstart));
        $item->event->BeforeDisplayContent = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onAfterDisplayContent', array(&$item, $params, $limitstart));
        $item->event->AfterDisplayContent = trim(implode("\n", $results));
        
        $dispatcher->trigger('onPrepareContent', array(&$item, $params, $limitstart));
        $item->introtext = $item->text;
        
        //K2 plugins
        $item->event->K2BeforeDisplay = '';
        $item->event->K2AfterDisplay = '';
        $item->event->K2AfterDisplayTitle = '';
        $item->event->K2BeforeDisplayContent = '';
        $item->event->K2AfterDisplayContent = '';
        
        JPluginHelper::importPlugin('k2');
        
        $results = $dispatcher->trigger('onK2BeforeDisplay', array(&$item, $params, $limitstart));
        $item->event->K2BeforeDisplay = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onK2AfterDisplay', array(&$item, $params, $limitstart));
        $item->event->K2AfterDisplay = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onK2AfterDisplayTitle', array(&$item, $params, $limitstart));
        $item->event->K2AfterDisplayTitle = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onK2BeforeDisplayContent', array(&$item, $params, $limitstart));
        $item->event->K2BeforeDisplayContent = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onK2AfterDisplayContent', array(&$item, $params, $limitstart));
        $item->event->K2AfterDisplayContent = trim(implode("\n", $results));
        
        $dispatcher->trigger('onK2PrepareContent', array(&$item, $params, $limitstart));
        $item->introtext = $item->text;
        
        //Author
        if ($params->get('itemAuthor')) {
          if (! empty($item->created_by_alias)) {
            $item->author = $item->created_by_alias;
            $item->authorGender = NULL;
            if ($params->get('itemAuthorAvatar'))
              $item->authorAvatar = K2HelperUtilities::getAvatar('alias');
          } else {
            $author = &JFactory::getUser($item->created_by);
            $item->author = $author->name;
            $query = "SELECT `gender` FROM #__k2_users WHERE userID={$author->id}";
            $db->setQuery($query, 0, 1);
            $item->authorGender = $db->loadResult();
            if ($params->get('itemAuthorAvatar')) {
              $item->authorAvatar = K2HelperUtilities::getAvatar($author->id, $author->email, $componentParams->get('userImageWidth'));
            }
            //Author Link
            $item->authorLink = JRoute::_(K2HelperRoute::getUserRoute($item->created_by));
          }
        }
        
        $rows[] = $item;
      }
      
      return $rows;
      
    }
    
  }
  
}
