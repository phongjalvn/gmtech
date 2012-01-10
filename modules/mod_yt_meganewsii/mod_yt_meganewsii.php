<?php
/*------------------------------------------------------------------------
 # Yt Mega News II - Version 1.0
 # Copyright (C) 2009-2011 The YouTech Company. All Rights Reserved.
 # @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 # Author: The YouTech Company
 # Websites: http://www.ytcvn.com
 -------------------------------------------------------------------------*/

defined( '_JEXEC' ) or die( 'Restricted access' );

defined( 'YT_MODULE_CACHE' ) or define('YT_MODULE_CACHE', JPATH_CACHE . DS . $module->module);

jimport("joomla.filesystem.folder");
jimport("joomla.filesystem.file");

class_exists('YtMegaII') or require_once (dirname(__FILE__). DS . 'lib' . DS . 'ytmegaii.php');

// assets import
$assets_url = 'modules/'.$module->module.'/assets/';

if (!defined('YTCJQUERY')){
	define('YTCJQUERY', 1);
	JHTML::script(		'ytc.jquery-1.5.min.js', 		$assets_url);
}
if (!defined('YT_MEGAII_ASSETS')){
	define('YT_MEGAII_ASSETS', 1);
	JHTML::script(		'ytc.megaii-1.0.min.js', 		$assets_url);
	JHTML::stylesheet(	'megaii.css', 					$assets_url);
	JHTML::stylesheet(	'megaii-font-color.css',		$assets_url);
	JHTML::stylesheet(	'megaii-tooltip.css',			$assets_url);
}

if (JRequest::getCmd('dev')=='1'){
	$params->set('theme', JRequest::getCmd('theme'));
}
$params->def('reader', 'NewsReader');
$megaii = new YtMegaII($params->toArray());
$data 		= $megaii->getData();

require JModuleHelper::getLayoutPath( $module->module );
?>