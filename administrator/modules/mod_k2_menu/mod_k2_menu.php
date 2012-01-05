<?php
/**
* @version		$Id:mod_k2_menu.php 0002 2010-03-05 06:05:38Z ivo.apostolov $
* @package		Joomla! / K2 / Protos Extensions
* @copyright	Copyright (C) 2007 - 2010 Protos Extensions. Ivo Apostolov. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Protos Extensions produces free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

$document = &JFactory::getDocument();
$document->addScript( JURI::base().'templates/khepri/js/menu.js' );
$document->addScript( JURI::base().'templates/khepri/js/index.js' );

require_once( dirname(__FILE__).DS.'helper.php' );

$hide	= JRequest::getInt('hidemainmenu');

if ( $hide ) {
	modK2MenuHelper::buildDisabledMenu();
} else {
	modK2MenuHelper::buildMenu();
}

?>