<?php
/**
 * @version		$Id: mod_k2bnr_content.php $
 * @package		K2
 * @author		BNR Branding Solutions, http://www.bnrbranding.com
 * @copyright	Copyright (C) 2010 BNR Branding Solutions. All rights reserved.
 * @license		GNU General Public License <http://www.gnu.org/copyleft/gpl.html>
 * @link		http://www.bnrbranding.com
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

    $id = JRequest::getInt('id');
    $option = JRequest::getVar('option');
    $view = JRequest::getVar('view');

if ((!empty($id))&&($option=="com_k2")&&($view=="item")) {

require_once (dirname( __FILE__ ).DS.'helper.php');

// Params
$moduleclass_sfx = $params->get('moduleclass_sfx','');
$getTemplate = $params->get('getTemplate','Default');

// Get component params
$componentParams = & JComponentHelper::getParams('com_k2');

$item = modK2BNRContentHelper::getItems($params);

if(count($item)){
	require(JModuleHelper::getLayoutPath('mod_k2bnr_content', $getTemplate.DS.'default'));
}

}