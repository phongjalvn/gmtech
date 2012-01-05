<?php
/**
* vmsearch Joomla! Module

*/

// no direct access
defined('_JEXEC') or die('Restricted access');
// include helper

require_once (dirname(__FILE__).DS.'helper.php');
$search_width	      = $params->get('search_width', 256);
$box_width	          = $params->get('box_width', 256);
$product_limit	      = $params->get('product_limit', 6);
$category_limit	      = $params->get('category_limit', 2);
$Searchresult	      = $params->get('Searchresult', 'Search...');
$text_search	      = $params->get('text_search', 'a');
require(JModuleHelper::getLayoutPath('mod_jv_k2search', 'default'));