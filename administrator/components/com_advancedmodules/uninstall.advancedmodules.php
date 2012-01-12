<?php
/**
 * Uninstallation File
 * Performs some extra tasks when uninstalling the component
 *
 * @package			Advanced Module Manager
 * @version			2.2.16
 *
 * @author			Peter van Westen <peter@nonumber.nl>
 * @link			http://www.nonumber.nl
 * @copyright		Copyright © 2011 NoNumber! All Rights Reserved
 * @license			http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

// No direct access
defined( '_JEXEC' ) or die();

$ext = 'advancedmodules';

jimport( 'joomla.filesystem.folder' );
jimport( 'joomla.filesystem.file' );

// Delete plugin files
$file = JPATH_PLUGINS.'/system/'.$ext.'php';
if ( JFile::exists( $file ) ) {
	JFile::delete( $file );
}
$file = JPATH_PLUGINS.'/system/'.$ext.'xml';
if ( JFile::exists( $file ) ) {
	JFile::delete( $file );
}
$folder = JPATH_PLUGINS.'/system/advancedmodules';
if ( JFolder::exists( $folder ) ) {
	JFolder::delete( $folder );
}

// Delete plugin language files
$lang_folder = JPATH_ADMINISTRATOR.'/language';
$languages = JFolder::folders( $lang_folder );
foreach ( $languages as $lang ) {
	$file = $lang_folder.'/'.$lang.'/'.$lang.'.plg_system_'.$ext.'.ini';
	if ( JFile::exists( $file ) ) {
		JFile::delete( $file );
	}
	$file = $lang_folder.'/'.$lang.'/'.$lang.'.plg_system_'.$ext.'.sys.ini';
	if ( JFile::exists( $file ) ) {
		JFile::delete( $file );
	}
}