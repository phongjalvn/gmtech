<?php
/**
 * @package			Advanced Module Manager
 * @version			2.2.14
 *
 * @author			Peter van Westen <peter@nonumber.nl>
 * @link			http://www.nonumber.nl
 * @copyright		Copyright © 2011 NoNumber! All Rights Reserved
 * @license			http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

/**
 * BASE ON JOOMLA CORE FILE:
 * /administrator/components/com_modules/toolbar.modules.html.php
 */

/**
 * @version			$Id: toolbar.modules.html.php 10863 2008-08-30 06:52:50Z willebil $
 * @package			Joomla
 * @subpackage	Modules
 * @copyright		Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
 * @license			GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

/**
 * @package			Joomla
 * @subpackage	Modules
 */
class TOOLBAR_modules
{
	/**
	 * Draws the menu for a New module
	 */
	function _NEW( $client )
	{
		JToolBarHelper::title( JText::_( 'AMM_MODULE' ).': <small><small>[ '.JText::_( 'New' ).' ]</small></small>', 'module.png' );
		JToolBarHelper::customX( 'edit', 'forward.png', 'forward.png', 'Next', true );
		JToolBarHelper::cancel();
		if ( $client->name == 'site' ) {
			JToolBarHelper::help( 'screen.modulessite.edit' );
		} else {
			JToolBarHelper::help( 'screen.modulesadministrator.edit' );
		}
	}

	/**
	 * Draws the menu for Editing an existing module
	 */
	function _EDIT( $client )
	{
		$config = plgSystemAdvancedModulesConfig();
		$moduleType = JRequest::getCmd( 'module' );
		$cid = JRequest::getVar( 'cid', array( 0 ), '', 'array' );
		JArrayHelper::toInteger( $cid, array( 0 ) );

		JToolBarHelper::title( JText::_( 'AMM_MODULE' ).': <small><small>[ '.JText::_( 'Edit' ).' ]</small></small>', 'module.png' );

		if ( $moduleType == 'custom' ) {
			JToolBarHelper::Preview( 'index.php?option=com_advancedmodules&tmpl=component&client='.$client->id.'&pollid='.$cid['0'] );
		}

		JToolBarHelper::save();
		JToolBarHelper::apply();
		if ( $cid['0'] ) {
			// for existing items the button is renamed `close`
			JToolBarHelper::cancel( 'cancel', 'Close' );
		} else {
			JToolBarHelper::cancel();
		}
		if ( $config->show_config_in_item ) {
			JToolBarHelper::preferences( 'com_advancedmodules', '500' );
		}
		JToolBarHelper::help( 'screen.modules.edit' );
	}

	/**
	 * Draws the menu for Moving modules
	 */
	function _MOVE( $client )
	{
		JToolBarHelper::title( JText::_( 'AMM_MOVE_MODULES' ) );
		JToolBarHelper::custom( 'doMove', 'move.png', 'move.png', 'Move', false );
		JToolBarHelper::cancel();
		JToolBarHelper::help( 'screen.modules' );
	}

	function _DEFAULT( $client )
	{
		JToolBarHelper::title( JText::_( 'AMM_ADVANCED_MODULES_MANAGER' ), 'module.png' );
		JToolBarHelper::publishList();
		JToolBarHelper::unpublishList();
		JToolBarHelper::customX( 'move', 'move.png', 'move.png', 'Move', true );
		JToolBarHelper::customX( 'copy', 'copy.png', 'copy.png', 'Copy', true );
		JToolBarHelper::deleteList();
		JToolBarHelper::editListX();
		JToolBarHelper::addNewX();
		JToolBarHelper::preferences( 'com_advancedmodules', '500' );
		JToolBarHelper::help( 'screen.modules' );
	}
}