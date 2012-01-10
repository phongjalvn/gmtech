<?php
/**
* @version		$Id:helper.php 0002 2010-03-05 06:05:38Z ivo.apostolov $
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
defined('_JEXEC') or die('Restricted access');

require_once(dirname(__FILE__).DS.'k2_menu.php');

class modK2MenuHelper
{
	/**
	 * Show the menu
	 * @param string The current user type
	 */
	function buildMenu()
	{
		global $mainframe;

		$lang		= & JFactory::getLanguage();
		$user		= & JFactory::getUser();
		$db			= & JFactory::getDBO();
		$usertype	= $user->get('usertype');

		// cache some acl checks
		$canCheckin			= $user->authorize('com_checkin', 'manage');
		$canConfig			= $user->authorize('com_config', 'manage');
		$manageTemplates	= $user->authorize('com_templates', 'manage');
		$manageTrash		= $user->authorize('com_trash', 'manage');
		$manageMenuMan		= $user->authorize('com_menus', 'manage');
		$manageLanguages	= $user->authorize('com_languages', 'manage');
		$installModules		= $user->authorize('com_installer', 'module');
		$editAllModules		= $user->authorize('com_modules', 'manage');
		$installPlugins		= $user->authorize('com_installer', 'plugin');
		$editAllPlugins		= $user->authorize('com_plugins', 'manage');
		$installComponents	= $user->authorize('com_installer', 'component');
		$editAllComponents	= $user->authorize('com_components', 'manage');
		$canMassMail		= $user->authorize('com_massmail', 'manage');
		$canManageUsers		= $user->authorize('com_users', 'manage');

		// Menu Types
		require_once( JPATH_ADMINISTRATOR.DS.'components'.DS.'com_menus'.DS.'helpers'.DS.'helper.php' );
		$menuTypes 	= MenusHelper::getMenuTypelist();

		/*
		 * Get the menu object
		 */
		$menu = new JK2AdminCSSMenu();

		/*
		 * Site SubMenu
		 */
		$menu->addChild(new JK2MenuNode(JText::_('Site')), true);
		$menu->addChild(new JK2MenuNode(JText::_('Control Panel'), 'index.php', 'class:cpanel'));
		$menu->addSeparator();
		if ($canManageUsers) {
			$menu->addChild(new JK2MenuNode(JText::_('User Manager'), 'index.php?option=com_users&task=view', 'class:user'));
		}
		$menu->addChild(new JK2MenuNode(JText::_('Media Manager'), 'index.php?option=com_media', 'class:media'));
		$menu->addSeparator();
		if ($canConfig) {
			$menu->addChild(new JK2MenuNode(JText::_('Configuration'), 'index.php?option=com_config', 'class:config'));
			$menu->addSeparator();
		}
		$menu->addChild(new JK2MenuNode(JText::_('Logout'), 'index.php?option=com_login&task=logout', 'class:logout'));

		$menu->getParent();

		/*
		 * Menus SubMenu
		 */
		$menu->addChild(new JK2MenuNode(JText::_('Menus')), true);
		if ($manageMenuMan) {
			$menu->addChild(new JK2MenuNode(JText::_('Menu Manager'), 'index.php?option=com_menus', 'class:menu'));
		}
		if ($manageTrash) {
			$menu->addChild(new JK2MenuNode(JText::_('Menu Trash'), 'index.php?option=com_trash&task=viewMenu', 'class:trash'));
		}

		if($manageTrash || $manageMenuMan) {
			$menu->addSeparator();
		}
		/*
		 * SPLIT HR
		 */
		if (count($menuTypes)) {
			foreach ($menuTypes as $menuType) {
				$menu->addChild(new JK2MenuNode($menuType->title.($menuType->home ? ' *' : ''), 'index.php?option=com_menus&task=view&menutype='.$menuType->menutype, 'class:menu'));
			}
		}
		$menu->getParent();

		/*
		 * Content SubMenu
		 */
		$menu->addChild(new JK2MenuNode(JText::_('Articles')), true);
		$menu->addChild(new JK2MenuNode(JText::_('New Article'), 'index.php?option=com_k2&view=item', 'class:article'));
		$menu->addChild(new JK2MenuNode(JText::_('All Articles'), 'index.php?option=com_k2&view=items&filter_trash=0', 'class:article'));
		$menu->addChild(new JK2MenuNode(JText::_('Trashed Articles'), 'index.php?option=com_k2&view=items&filter_trash=1', 'class:trash'));
		$menu->addSeparator();
		$menu->addChild(new JK2MenuNode(JText::_('Categories'), 'index.php?option=com_k2&view=categories', 'class:category'));
		$menu->addChild(new JK2MenuNode(JText::_('Trashed Categories'), 'index.php?option=com_k2&view=categories&filter_trash=1', 'class:trash'));
		$menu->addSeparator();
		$menu->addChild(new JK2MenuNode(JText::_('Tags'), 'index.php?option=com_k2&view=tags', 'class:section'));
		$menu->addChild(new JK2MenuNode(JText::_('Comments'), 'index.php?option=com_k2&view=comments', 'class:plugin'));
		$menu->addSeparator();
		$menu->addChild(new JK2MenuNode(JText::_('Users'), 'index.php?option=com_k2&view=users', 'class:user'));
		$menu->addChild(new JK2MenuNode(JText::_('User Groups'), 'index.php?option=com_k2&view=userGroups', 'class:user'));
		$menu->addSeparator();
		$menu->addChild(new JK2MenuNode(JText::_('Extra Fields'), 'index.php?option=com_k2&view=extraFields', 'class:plugin'));
		$menu->addChild(new JK2MenuNode(JText::_('Extra Fields Groups'), 'index.php?option=com_k2&view=extraFieldsGroups', 'class:plugin'));
		$menu->addSeparator();
		$menu->addChild(new JK2MenuNode(JText::_('Featured Articles'), 'index.php?option=com_k2&view=items&filter_featured=1', 'class:frontpage'));
		$menu->getParent();

		/*
		 * Content SubMenu
		 */
		$menu->addChild(new JK2MenuNode(JText::_('Pages')), true);
		$menu->addChild(new JK2MenuNode(JText::_('Pages Manager'), 'index.php?option=com_content', 'class:article'));
		if ($manageTrash) {
			$menu->addChild(new JK2MenuNode(JText::_('Pages Trash'), 'index.php?option=com_trash&task=viewContent', 'class:trash'));
		}
		$menu->addSeparator();
		$menu->addChild(new JK2MenuNode(JText::_('Section Manager'), 'index.php?option=com_sections&scope=content', 'class:section'));
		$menu->addChild(new JK2MenuNode(JText::_('Category Manager'), 'index.php?option=com_categories&section=com_content', 'class:category'));
		$menu->addSeparator();
		$menu->addChild(new JK2MenuNode(JText::_('Frontpage Manager'), 'index.php?option=com_frontpage', 'class:frontpage'));

		$menu->getParent();

		/*
		 * Components SubMenu
		 */
		if ($editAllComponents)
		{
			$menu->addChild(new JK2MenuNode(JText::_('Components')), true);

			$query = 'SELECT *' .
				' FROM #__components' .
				' WHERE '.$db->NameQuote( 'option' ).' <> "com_frontpage"' .
				' AND '.$db->NameQuote( 'option' ).' <> "com_media"' .
				' AND enabled = 1' .
				' ORDER BY ordering, name';
			$db->setQuery($query);
			$comps = $db->loadObjectList(); // component list
			$subs = array(); // sub menus
			$langs = array(); // additional language files to load

			// first pass to collect sub-menu items
			foreach ($comps as $row)
			{
				if ($row->parent)
				{
					if (!array_key_exists($row->parent, $subs)) {
						$subs[$row->parent] = array ();
					}
					$subs[$row->parent][] = $row;
					$langs[$row->option.'.menu'] = true;
				} elseif (trim($row->admin_menu_link)) {
					$langs[$row->option.'.menu'] = true;
				}
			}

			// Load additional language files
			if (array_key_exists('.menu', $langs)) {
				unset($langs['.menu']);
			}
			foreach ($langs as $lang_name => $nothing) {
				$lang->load($lang_name);
			}

			foreach ($comps as $row)
			{
				if ($editAllComponents | $user->authorize('administration', 'edit', 'components', $row->option))
				{
					if ($row->parent == 0 && (trim($row->admin_menu_link) || array_key_exists($row->id, $subs)))
					{
						$text = $lang->hasKey($row->option) ? JText::_($row->option) : $row->name;
						$link = $row->admin_menu_link ? "index.php?$row->admin_menu_link" : "index.php?option=$row->option";
						if (array_key_exists($row->id, $subs)) {
							$menu->addChild(new JK2MenuNode($text, $link, $row->admin_menu_img), true);
							foreach ($subs[$row->id] as $sub) {
								$key  = $row->option.'.'.$sub->name;
								$text = $lang->hasKey($key) ? JText::_($key) : $sub->name;
								$link = $sub->admin_menu_link ? "index.php?$sub->admin_menu_link" : null;
								$menu->addChild(new JK2MenuNode($text, $link, $sub->admin_menu_img));
							}
							$menu->getParent();
						} else {
							$menu->addChild(new JK2MenuNode($text, $link, $row->admin_menu_img));
						}
					}
				}
			}
			$menu->getParent();
		}

		/*
		 * Extensions SubMenu
		 */
		if ($installModules)
		{
			$menu->addChild(new JK2MenuNode(JText::_('Extensions')), true);

			$menu->addChild(new JK2MenuNode(JText::_('Install/Uninstall'), 'index.php?option=com_installer', 'class:install'));
			$menu->addSeparator();
			if ($editAllModules) {
				$menu->addChild(new JK2MenuNode(JText::_('Module Manager'), 'index.php?option=com_modules', 'class:module'));
			}
			if ($editAllPlugins) {
				$menu->addChild(new JK2MenuNode(JText::_('Plugin Manager'), 'index.php?option=com_plugins', 'class:plugin'));
			}
			if ($manageTemplates) {
				$menu->addChild(new JK2MenuNode(JText::_('Template Manager'), 'index.php?option=com_templates', 'class:themes'));
			}
			if ($manageLanguages) {
				$menu->addChild(new JK2MenuNode(JText::_('Language Manager'), 'index.php?option=com_languages', 'class:language'));
			}
			$menu->getParent();
		}

		/*
		 * System SubMenu
		 */
		if ($canConfig || $canCheckin)
		{
			$menu->addChild(new JK2MenuNode(JText::_('Tools')), true);

			if ($canConfig) {
				$menu->addChild(new JK2MenuNode(JText::_('Read Messages'), 'index.php?option=com_messages', 'class:messages'));
				$menu->addChild(new JK2MenuNode(JText::_('Write Message'), 'index.php?option=com_messages&task=add', 'class:messages'));
				$menu->addSeparator();
			}
			if ($canMassMail) {
				$menu->addChild(new JK2MenuNode(JText::_('Mass Mail'), 'index.php?option=com_massmail', 'class:massmail'));
				$menu->addSeparator();
			}
			if ($canCheckin) {
				$menu->addChild(new JK2MenuNode(JText::_('Global Checkin'), 'index.php?option=com_checkin', 'class:checkin'));
				$menu->addSeparator();
			}
			$menu->addChild(new JK2MenuNode(JText::_('Clean Cache'), 'index.php?option=com_cache', 'class:config'));
			$menu->addChild(new JK2MenuNode(JText::_('Purge Expired Cache'), 'index.php?option=com_cache&task=purgeadmin', 'class:config'));

			$menu->getParent();
		}

		/*
		 * Help SubMenu
		 */
		$menu->addChild(new JK2MenuNode(JText::_('Help')), true);
		$menu->addChild(new JK2MenuNode(JText::_('Joomla! Help'), 'index.php?option=com_admin&task=help', 'class:help'));
		$menu->addChild(new JK2MenuNode(JText::_('System Info'), 'index.php?option=com_admin&task=sysinfo', 'class:info'));

		$menu->getParent();

		$menu->renderMenu('menu', '');
	}

	/**
	 * Show an disbaled version of the menu, used in edit pages
	 *
	 * @param string The current user type
	 */
	function buildDisabledMenu()
	{
		$lang	 =& JFactory::getLanguage();
		$user	 =& JFactory::getUser();
		$usertype = $user->get('usertype');

		$canConfig			= $user->authorize('com_config', 'manage');
		$installModules		= $user->authorize('com_installer', 'module');
		$editAllModules		= $user->authorize('com_modules', 'manage');
		$installPlugins		= $user->authorize('com_installer', 'plugin');
		$editAllPlugins		= $user->authorize('com_plugins', 'manage');
		$installComponents	= $user->authorize('com_installer', 'component');
		$editAllComponents	= $user->authorize('com_components', 'manage');
		$canMassMail			= $user->authorize('com_massmail', 'manage');
		$canManageUsers		= $user->authorize('com_users', 'manage');

		$text = JText::_('Menu inactive for this Page', true);

		// Get the menu object
		$menu = new JK2AdminCSSMenu();

		// Site SubMenu
		$menu->addChild(new JK2MenuNode(JText::_('Site'), null, 'disabled'));

		// Menus SubMenu
		$menu->addChild(new JK2MenuNode(JText::_('Menus'), null, 'disabled'));

		// Content SubMenu
		$menu->addChild(new JK2MenuNode(JText::_('Content'), null, 'disabled'));

		// Components SubMenu
		if ($installComponents) {
			$menu->addChild(new JK2MenuNode(JText::_('Components'), null, 'disabled'));
		}

		// Extensions SubMenu
		if ($installModules) {
			$menu->addChild(new JK2MenuNode(JText::_('Extensions'), null, 'disabled'));
		}

		// System SubMenu
		if ($canConfig) {
			$menu->addChild(new JK2MenuNode(JText::_('Tools'),  null, 'disabled'));
		}

		// Help SubMenu
		$menu->addChild(new JK2MenuNode(JText::_('Help'),  null, 'disabled'));

		$menu->renderMenu('menu', 'disabled');
	}
}
?>
