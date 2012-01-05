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

if (class_exists('JElement')){
	class JElementListCategory extends JElement {
		var   $_name = 'Yt Category Listing';
		function fetchElement($name, $value, &$node, $control_name){
			$db =& JFactory::getDBO();
			$category_query = "SELECT c.title, c.id, s.title as section_title, s.id as section_id FROM #__categories c INNER JOIN #__sections s ON s.id=c.section WHERE c.published=1 AND s.published=1 ORDER BY s.ordering, c.ordering;";
			$db->setQuery($category_query);
			$categories = $db->loadObjectList();
			$sections = array();
			$html = "";
			if (count($categories)>0){
				foreach ($categories as $i => $cat){
					if (!isset($sections[$cat->section_id])){
						$sections[$cat->section_id] = array();
					}
					$sections[$cat->section_id][] =& $categories[$i];
				}
				if (!is_array($value)){
					$value = array($value);
				}
				class_exists('YtUtils') or include_once dirname(dirname(__FILE__)) . DS . 'lib' . DS . 'ytutils.php';
				$html = '<select class="inputbox" multiple="multiple" size="15" style="min-width: 200px;" id="' . $control_name . $name .'" name="' . $control_name . '[' . $name . '][]">';
				foreach ($sections as $sec){
					if (count($sec)){
						$html .= '<optgroup label="'. YtUtils::shorten($sec[0]->section_title, 50) . '">';
						foreach ($sec as $cat){
							$cid = $cat->id . '_' . $cat->section_id;
							$selected = in_array($cid, $value) ? 'selected="selected"' : '';
							$html .= '<option value="' . $cid . '" ' . $selected . '>' . YtUtils::shorten($cat->title, 45) . '</option>';
						}
						$html .= '</optgroup>';
					}
				}
				$html .= '<select>';
			} else {
				$html = "Have no category. Please create categories first.";
			}
			return $html;
		}
	}
}