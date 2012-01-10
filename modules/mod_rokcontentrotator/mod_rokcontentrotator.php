<?php
/**
* @package RokLatestNews
* @copyright Copyright (C) 2007 RocketWerx. All rights reserved.
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
*/


// no direct access
defined('_JEXEC') or die('Restricted access');

// Include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');
modRokContentRotatorHelper::loadScripts($params);

// Cache this basd on access level
$conf =& JFactory::getConfig();
if ($conf->getValue('config.caching') && $params->get("module_cache", 0)) { 
	$user =& JFactory::getUser();
	
	$aid  = (int) $user->get('aid', 0);
	switch ($aid) {
	    case 0:
	        $level = "public";
	        break;
	    case 1:
	        $level = "registered";
	        break;
	    case 2:
	        $level = "special";
	        break;
	}
	// Cache this based on access level
	$args = array(&$params);
	$cache =& JFactory::getCache('mod_rokcontentrotator-' . $level);
	$list = $cache->call(array('modRokContentRotatorHelper', 'getList'), $params);
}
else {
    $list = modRokContentRotatorHelper::getList($params);
}

$counter = 0;
require(JModuleHelper::getLayoutPath('mod_rokcontentrotator'));
