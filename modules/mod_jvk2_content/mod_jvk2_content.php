<?php
/*
// *** Last update: September 9th, 2009 ***
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

require_once (dirname( __FILE__ ).DS.'helper.php');

$moduleclass_sfx = $params->get('moduleclass_sfx','');
$getTemplate = $params->get('getTemplate','');

$componentParams = & JComponentHelper::getParams('com_k2');

$items = modjvK2ContentHelper::getItems($params);

if(count($items)){
	require(JModuleHelper::getLayoutPath('mod_jvk2_content', $getTemplate.DS.'default'));
}
