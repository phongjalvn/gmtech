<?php
/* 
 // "K2Tabber" Plugin by JoomlaWorks for K2 v2.x - Version 1.0
 // Copyright (c) 2006 - 2009 JoomlaWorks Ltd. All rights reserved.
 // Released under the GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 // More info at http://www.joomlaworks.gr
 // Designed and developed by the JoomlaWorks team 
 // *** Last update: June 20th, 2009 *** 
 */

// no direct access
defined('_JEXEC') or die ('Restricted access');
JLoader::register('K2Plugin', JPATH_ADMINISTRATOR.DS.'components'.DS.'com_k2'.DS.'lib'.DS.'k2plugin.php');

/**
 * Example K2 Plugin to render YouTube URLs entered in backend K2 forms to video players in the frontend.
 */

class plgK2Tabberfree extends K2Plugin {

	// Some params 
	var $pluginName = 'tabberfree';
	var $pluginNameHumanReadable = 'K2Tabber Free Options';
	var $pluginParams;

	function plgK2Tabberfree( & $subject, $params) {
	
		parent::__construct($subject, $params);
		
	}

	/**
	 * Below we list all available FRONTEND events, to trigger K2 plugins.
	 * Watch the different prefix "onK2" instead of just "on" as used in Joomla! already.
	 * Most functions are empty to showcase what is available to trigger and output. A few are used to actually output some code for example reasons.
	 */

	function onK2PrepareContent( & $item, & $params, $limitstart) {
	
		global $mainframe;
	}

	function onK2AfterDisplay( & $item, & $params, $limitstart) {
	
		global $mainframe;
		return '';
	}

	function onK2BeforeDisplay( & $item, & $params, $limitstart) {
	
		global $mainframe;
		return '';
	}

	function onK2AfterDisplayTitle( & $item, & $params, $limitstart) {
	
		global $mainframe;
		return '';
	}

	function onK2BeforeDisplayContent( & $item, & $params, $limitstart) {
		
		global $mainframe;
		return '';
	}

	// Event to display in the frontend the YouTube URL as entered in the item form
	function onK2AfterDisplayContent( & $item, & $params, $limitstart) {
	
		global $mainframe;
		return '';
	}

	// Event to display in the frontend the YouTube URL as entered in the category form
	function onK2CategoryDisplay( & $category, & $params, $limitstart) {
		global $mainframe;	
		return '';
	}

	// Event to display in the frontend the YouTube URL as entered in the user form
	function onK2UserDisplay( & $user, & $params, $limitstart) {
	
		global $mainframe;
		return '';
	}
	

} // END CLASS 

