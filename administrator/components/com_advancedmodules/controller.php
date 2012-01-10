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
 * /administrator/components/com_modules/controller.php
 */

/**
 * @version		$Id: controller.php 19343 2010-11-03 18:12:02Z ian $
 * @package		Joomla
 * @subpackage	Modules
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

// No direct access
defined( '_JEXEC' ) or die();

jimport( 'joomla.application.component.controller' );

require_once JPATH_PLUGINS.'/system/nnframework/helpers/parameters.php';

$client = JRequest::getVar( 'client', 0, '', 'int' );
if ( $client == 1 ) {
	JSubMenuHelper::addEntry( JText::_( 'Site' ), 'index.php?option=com_advancedmodules&client_id=0' );
	JSubMenuHelper::addEntry( JText::_( 'Administrator' ), 'index.php?option=com_advancedmodules&client=1', true );
} else {
	JSubMenuHelper::addEntry( JText::_( 'Site' ), 'index.php?option=com_advancedmodules&client_id=0', true );
	JSubMenuHelper::addEntry( JText::_( 'Administrator' ), 'index.php?option=com_advancedmodules&client=1' );
}
JTable::addIncludePath( JPATH_COMPONENT_ADMINISTRATOR.'/tables' );

class ModulesController extends JController
{
	/**
	 * Constructor
	 */
	function __construct( $config = array() )
	{
		parent::__construct( $config );

		// Register Extra tasks
		$this->registerTask( 'move', 'move' );
		$this->registerTask( 'apply', 'save' );
		$this->registerTask( 'unpublish', 'publish' );
		$this->registerTask( 'orderup', 'reorder' );
		$this->registerTask( 'orderdown', 'reorder' );
		$this->registerTask( 'accesspublic', 'access' );
		$this->registerTask( 'accessregistered', 'access' );
		$this->registerTask( 'accessspecial', 'access' );
	}

	/**
	 * Compiles a list of installed or defined modules
	 */
	function view()
	{
		$app = JFactory::getApplication();

		// Initialize some variables
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$option = 'com_advancedmodules_'.$client->id;

		$filters = new stdClass();

		$filters->search = $app->getUserStateFromRequest( $option.'search', 'search', '', 'string' );
		$filters->search = JString::strtolower( $filters->search );

		$filters->order = $app->getUserStateFromRequest( $option.'filter_order', 'filter_order', 'm.position', 'cmd' );
		$filters->order_Dir = $app->getUserStateFromRequest( $option.'filter_order_Dir', 'filter_order_Dir', '', 'word' );
		$filters->state = $app->getUserStateFromRequest( $option.'filter_state', 'filter_state', '', 'word' );
		$filters->type = $app->getUserStateFromRequest( $option.'filter_type', 'filter_type', '', 'cmd' );
		$filters->position = $app->getUserStateFromRequest( $option.'filter_position', 'filter_position', '', 'cmd' );
		$filters->template = $app->getUserStateFromRequest( $option.'filter_template', 'filter_template', '', 'cmd' );
		$filters->access = $app->getUserStateFromRequest( $option.'filter_access', 'filter_access', '', 'cmd' );
		$filters->access_adv = $app->getUserStateFromRequest( $option.'filter_access_adv', 'filter_access_adv', '', 'cmd' );
		$filters->menuitems = $app->getUserStateFromRequest( $option.'filter_menuitems', 'filter_menuitems', '', 'cmd' );

		$filters->limit = $app->getUserStateFromRequest( 'global.list.limit', 'limit', $app->getCfg( 'list_limit' ), 'int' );
		$filters->limitstart = $app->getUserStateFromRequest( $option.'.limitstart', 'limitstart', 0, 'int' );

		if ( $filters->order == 'm.ordering' ) {
			$orderby = ' ORDER BY m.position, m.ordering '.$filters->order_Dir;
		} else if ( $filters->order == 'color' ) {
			$orderby = ' ORDER BY m.id '.$filters->order_Dir;
		} else {
			$orderby = ' ORDER BY '.$filters->order.' '.$filters->order_Dir.', m.ordering ASC';
		}

		$lists = $this->getListsAdmin( $filters );
		$sql = $this->getSqlAdmin( $filters );

		// get the total number of records
		$query = 'SELECT COUNT( DISTINCT m.id )'
			.' FROM #__modules AS m'
			.$sql;
		$db->setQuery( $query );
		$total = $db->loadResult();

		jimport( 'joomla.html.pagination' );
		$pageNav = new JPagination( $total, $filters->limitstart, $filters->limit );

		$query = 'SELECT m.*, u.name AS editor, g.name AS groupname, a.params as adv_params, mm.menuid as assignment'
			.' FROM #__modules AS m'
			.$sql
			.' GROUP BY m.id'
			.$orderby;

		if ( $filters->order == 'color' ) {
			$db->setQuery( $query );
			$rows = $db->loadObjectList();
			$newrows = array();
			foreach ( $rows as $i => $row ) {
				$color = 'FFFFFF';
				if ( !( strpos( $row->adv_params, 'color=' ) === false ) ) {
					$color = preg_replace( '#^.*?color=([\#a-z0-9]*).*$#si', '\1', $row->adv_params );
					$color = preg_replace( '#[^a-z0-9]#si', '', $row->adv_params );
				}
				$newrows[strtoupper( preg_replace( '#[^a-z0-9_]#si', '', $color.'_'.( ( $i + 1 ) / 10000 ) ) )] = $row;
			}
			if ( strtolower( $filters->order_Dir ) == 'desc' ) {
				krsort( $newrows );
			} else {
				ksort( $newrows );
			}
			$rows = array_slice( array_values( $newrows ), $pageNav->limitstart, $pageNav->limit );
			unset( $newrows );
		} else {
			$db->setQuery( $query, $pageNav->limitstart, $pageNav->limit );
			$rows = $db->loadObjectList();
		}
		if ( $db->getErrorNum() ) {
			echo $db->stderr();
			return false;
		}

		require_once JApplicationHelper::getPath( 'admin_html' );
		HTML_modules::view( $rows, $client, $pageNav, $lists );
	}

	function getSqlAdmin( $filters )
	{
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );

		$joins = array();
		$where = array();

		$where[] = 'm.client_id = '.(int) $client->id;

		$joins[] = 'LEFT JOIN #__advancedmodules AS a ON a.moduleid = m.id';
		$joins[] = 'LEFT JOIN #__users AS u ON u.id = m.checked_out';
		$joins[] = 'LEFT JOIN #__groups AS g ON g.id = m.access';
		$joins[] = 'LEFT JOIN #__modules_menu AS mm ON mm.moduleid = m.id';

		// used by filter
		if ( $filters->type ) {
			$where[] = 'm.module = '.$db->quote( $filters->type );
		}
		if ( $filters->position ) {
			$where[] = 'm.position = '.$db->quote( $filters->position );
		}
		if ( $filters->access != '' && $client->id == 0 ) {
			$where[] = 'm.access = '.(int) $filters->access;
		}
		if ( $filters->template ) {
			$joins[] = 'LEFT JOIN #__modules_menu AS mm ON mm.moduleid = m.id';
			$joins[] = 'LEFT JOIN #__templates_menu AS t ON t.menuid = mm.menuid';
			$where[] = 't.template = '.$db->quote( $filters->template );
		}
		if ( $filters->menuitems != '' ) {
			switch ( $filters->menuitems ) {
				case 'none':
					// None
					$where[] = 'mm.menuid IS NULL';
					break;
				case 'all':
					// All
					$where[] = 'mm.menuid = 0';
					break;
				case 'varies':
					// All
					$where[] = 'mm.menuid != 0 AND mm.menuid IS NOT NULL';
					break;
				default:
					// ID
					//$where[] = 'mm.menuid = 0 OR mm.menuid ='. (int) $filters->menuitems;
					$where[] = 'mm.menuid ='.(int) $filters->menuitems;
					break;
			}
		}
		if ( $filters->search ) {
			$where[] = 'LOWER( m.title ) LIKE '.$db->quote( '%'.$db->getEscaped( $filters->search, true ).'%', false );
		}
		if ( $filters->state ) {
			if ( $filters->state == 'P' ) {
				$where[] = 'm.published = 1';
			} else if ( $filters->state == 'U' ) {
				$where[] = 'm.published = 0';
			}
		}

		$where = ' WHERE '.implode( "\n".' AND ', $where );
		$join = ' '.implode( "\n".' ', array_unique( $joins ) );

		return $join."\n".$where;
	}

	function getListsAdmin( $filters )
	{
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );

		// get list of Positions for dropdown filter
		$query = 'SELECT m.position AS value, m.position AS text'
			.' FROM #__modules as m'
			.' WHERE m.client_id = '.(int) $client->id
			.' GROUP BY m.position'
			.' ORDER BY m.position';
		$db->setQuery( $query );
		$options[] = JHtml::_( 'select.option', '0', '- '.JText::_( 'Position' ).' -' );
		$options = array_merge( $options, $db->loadObjectList() );
		$lists['position'] = JHtml::_( 'select.genericlist', $options, 'filter_position', 'class="inputbox" size="1" onchange="this.form.submit()"', 'value', 'text', "$filters->position" );

		// get list of Types for dropdown filter
		$query = 'SELECT module AS value, module AS text'
			.' FROM #__modules'
			.' WHERE client_id = '.(int) $client->id
			.' GROUP BY module'
			.' ORDER BY module';
		$db->setQuery( $query );
		$options = array( JHtml::_( 'select.option', '0', '- '.JText::_( 'Type' ).' -' ) );
		$options = array_merge( $options, $db->loadObjectList() );
		$lists['type'] = JHtml::_( 'select.genericlist', $options, 'filter_type', 'class="inputbox" size="1" onchange="this.form.submit()"', 'value', 'text', "$filters->type" );

		// state filter
		$lists['state'] = JHtml::_( 'grid.state', $filters->state );

		// state access
		if ( true || $client->id == 1 ) {
			// Administrator modules
			$query = 'SELECT id AS value, name AS text'
				.' FROM #__groups'
				.' ORDER BY id';
			$db->setQuery( $query );
			$options = array( JHtml::_( 'select.option', '', '- '.JText::_( 'AMM_ACCESS_LEVEL' ).' -' ) );
			$options = array_merge( $options, $db->loadObjectList() );
			$lists['access'] = JHtml::_( 'select.genericlist', $options, 'filter_access', 'class="inputbox" size="1" onchange="this.form.submit()"', 'value', 'text', $filters->access );
		} else {
			// TODO: ... still have to think about this!
			// Site modules
			$options = array();
			$options[] = JHtml::_( 'select.option', '', '- '.JText::_( 'AMM_ACCESS_LEVEL' ).' -' );
			$options[] = JHtml::_( 'select.option', '0', JText::_( 'NN_NOT_REGISTERED' ).' / '.JText::_( 'NN_LOGGED_IN' ) );

			$acl = JFactory::getACL();
			$options = array_merge( $options, $acl->get_group_children_tree( null, 'USERS', 0 ) );

			$lists['access'] = JHtml::_( 'select.genericlist', $options, 'filter_access_adv', 'class="inputbox" size="1" onchange="this.form.submit()"', 'value', 'text', $filters->access_adv );
		}

		// template assignment filter
		if ( true || $client->id == 1 ) {
			// Administrator modules
			$query = 'SELECT DISTINCT( template ) AS text, template AS value'
				.' FROM #__templates_menu'
				.' WHERE client_id = '.(int) $client->id;
			$db->setQuery( $query );
			$options = array();
			$options[] = JHtml::_( 'select.option', '0', '- '.JText::_( 'Template' ).' -' );
			$options = array_merge( $options, $db->loadObjectList() );
			$lists['template'] = JHtml::_( 'select.genericlist', $options, 'filter_template', 'class="inputbox" size="1" onchange="this.form.submit()"', 'value', 'text', "$filters->template" );
		} else {
			// TODO: ... still have to think about this!
			// Site modules
			require_once JPATH_ADMINISTRATOR.'/components/com_templates/helpers/template.php';
			$templates = array();
			$templates = TemplatesHelper::parseXMLTemplateFiles( JPATH_ROOT.'/templates' );
			$options = array();
			$options[] = JHtml::_( 'select.option', '0', '- '.JText::_( 'Template' ).' -' );
			foreach ( $templates as $template ) {
				$options[] = JHtml::_( 'select.option', $template->directory, $template->name );
			}

			$lists['template'] = JHtml::_( 'select.genericlist', $options, 'filter_template', 'class="inputbox" size="1" onchange="this.form.submit()"', 'value', 'text', "$filters->template" );
		}
		// template assignment filter
		$query = 'SELECT DISTINCT( template ) AS text, template AS value'.
			' FROM #__templates_menu'.
			' WHERE client_id = '.(int) $client->id;
		$db->setQuery( $query );

		// get list of Menu Item Assignments for dropdown filter

		// load the list of menu types
		$query = 'SELECT menutype, title'
			.' FROM #__menu_types'
			.' ORDER BY title';
		$db->setQuery( $query );
		$menuTypes = $db->loadObjectList();

		$query = 'SELECT m.id, m.parent, m.name, m.menutype, m.type, m.published, mm.moduleid as assignment'
			.' FROM #__menu as m'
			.' LEFT JOIN #__modules_menu AS mm ON mm.menuid = m.id'
			.' WHERE m.published != -2'
			.' GROUP BY m.id'
			.' ORDER BY m.menutype, m.parent, m.ordering';
		$db->setQuery( $query );
		$menuItems = $db->loadObjectList();

		// establish the hierarchy of the menu
		$children = array();

		if ( $menuItems ) {
			// first pass - collect children
			foreach ( $menuItems as $v )
			{
				$pt = $v->parent;
				$list = @$children[$pt] ? $children[$pt] : array();
				array_push( $list, $v );
				$children[$pt] = $list;
			}
		}

		// second pass - get an indent list of the items
		require_once JPATH_LIBRARIES.'/joomla/html/html/menu.php';
		$list = JHTMLMenu::treerecurse( 0, '', array(), $children, 9999, 0, 0 );

		// assemble into menutype groups
		$n = count( $list );
		$groupedList = array();
		foreach ( $list as $k => $v ) {
			$groupedList[$v->menutype][] =& $list[$k];
		}

		// assemble menu items to the array
		$options = array();
		$options[] = JHtml::_( 'select.option', '', '- '.JText::_( 'AMM_MENU_ITEM_ASSIGNMENT' ).' -' );
		$options[] = JHtml::_( 'select.option', 'all', JText::_( 'All' ) );
		$options[] = JHtml::_( 'select.option', 'none', JText::_( 'None' ) );
		$options[] = JHtml::_( 'select.option', 'varies', JText::_( 'Varies' ) );
		$options[] = JHtml::_( 'select.option', '-', '----------------------------------------', 'value', 'text', true );

		$count = 0;
		foreach ( $menuTypes as $type ) {
			if ( isset( $groupedList[$type->menutype] ) ) {
				if ( $count > 0 ) {
					$options[] = JHtml::_( 'select.option', '-', '&nbsp;', 'value', 'text', true );
				}
				$count++;
				$options[] = JHtml::_( 'select.option', $type->menutype, '[ '.$type->title.' ]', 'value', 'text', true );
				$n = count( $groupedList[$type->menutype] );
				for ( $i = 0; $i < $n; $i++ )
				{
					$item =& $groupedList[$type->menutype][$i];

					//If menutype is changed but item is not saved yet, use the new type in the list
					if ( JRequest::getString( 'option', '', 'get' ) == 'com_menus' ) {
						$currentItemArray = JRequest::getVar( 'cid', array( 0 ), '', 'array' );
						$currentItemId = (int) $currentItemArray['0'];
						$currentItemType = JRequest::getString( 'type', $item->type, 'get' );
						if ( $currentItemId == $item->id && $currentItemType != $item->type ) {
							$item->type = $currentItemType;
						}
					}

					$item_name = $item->treename;
					$item_id = $item->id;
					if ( $item->published == 0 ) {
						$item_name = '*'.$item_name.' ('.JText::_( 'Unpublished' ).')';
						$item_id .= '" style="font-style:italic;';
					}
					$options[] = JHtml::_( 'select.option', $item_id, '&nbsp;&nbsp;&nbsp;'.$item_name, 'value', 'text', ( $item->assignment ? 0 : 1 ) );
				}
			}
		}

		$lists['menuitems'] = JHtml::_( 'select.genericlist', $options, 'filter_menuitems', 'class="inputbox" size="1" onchange="this.form.submit()"', 'value', 'text', "$filters->menuitems" );

		// table ordering
		$lists['order_Dir'] = $filters->order_Dir;
		$lists['order'] = $filters->order;

		// search filter
		$lists['search'] = $filters->search;

		return $lists;
	}

	function move()
	{
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );

		$query = 'SELECT *'
			.' FROM #__modules'
			.' WHERE id IN ( '.implode( ',', $cid ).' )'
			.' ORDER BY position, ordering';
		;
		$db->setQuery( $query );
		$rows = $db->loadObjectList();

		$lists = array();

		// positions
		// get list of Positions for dropdown filter
		$query = 'SELECT position AS value, position AS text'
			.' FROM #__modules'
			.' WHERE client_id = '.(int) $client->id
			.' GROUP BY position'
			.' ORDER BY position';
		$db->setQuery( $query );
		$positions = $db->loadObjectList();
		$lists['position'] = JHtml::_( 'select.genericlist', $positions, 'position', 'class="inputbox" size="10"', 'value', 'text', null );

		require_once JApplicationHelper::getPath( 'admin_html' );

		HTML_modules::move( $rows, $client, $lists );
	}

	function doMove()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$app = JFactory::getApplication();

		// Get some variables from the request
		$position = JRequest::getVar( 'position', '', 'post', 'string' );
		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger( $cid );

		//Check to see if a menu was selected to copy the items too
		if ( empty( $position ) ) {
			$msg = JText::_( 'Please select a position from the list' );
			$app->enqueueMessage( $msg, 'message' );
			return $this->execute( 'move' );
		}

		$db = JFactory::getDBO();

		$query = 'UPDATE #__modules'
			.' SET position = '.$db->quote( $position )
			.' WHERE id IN ( '.implode( ',', $cid ).' )';
		$db->setQuery( $query );

		$model = $this->getModel( 'List' );

		if ( !$db->query() ) {
			return JError::raiseWarning( 500, $db->getError() );
		}

		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$msg = JText::sprintf( 'AMM_MODULES_MOVED_TO', count( $cid ), $position );
		$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id, $msg );
	}

	/**
	 * Compiles information to add or edit a module
	 *
	 * @param string The current GET/POST option
	 * @param integer The unique id of the record to edit
	 */
	function copy()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		// Initialize some variables
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		$n = count( $cid );

		if ( $n == 0 ) {
			return JError::raiseWarning( 500, JText::_( 'No items selected' ) );
		}

		$row = JTable::getInstance( 'module' );
		$tuples = array();

		foreach ( $cid as $id )
		{
			// load the row from the db table
			$row->load( (int) $id );
			$row->title = JText::sprintf( 'Copy of', $row->title );
			$row->id = 0;
			$row->iscore = 0;
			$row->published = 0;

			if ( !$row->check() ) {
				return JError::raiseWarning( 500, $row->getError() );
			}
			if ( !$row->store() ) {
				return JError::raiseWarning( 500, $row->getError() );
			}
			$row->checkin();

			$row->reorder( 'position='.$db->quote( $row->position ).' AND client_id='.(int) $client->id );

			// advanced params
			$query = 'SELECT params'
				.' FROM #__advancedmodules'
				.' WHERE moduleid = '.(int) $id;
			$db->setQuery( $query );
			$query = 'INSERT INTO #__advancedmodules ( moduleid, params ) VALUES ('.(int) $row->id.','.$db->quote( $db->loadResult() ).')';
			$db->setQuery( $query );
			if ( !$db->query() ) {
				return JError::raiseWarning( 500, $db->getError() );
			}

			$query = 'SELECT menuid'
				.' FROM #__modules_menu'
				.' WHERE moduleid = '.(int) $cid['0'];
			$db->setQuery( $query );
			$rows = $db->loadResultArray();

			foreach ( $rows as $menuid ) {
				$tuples[] = '('.(int) $row->id.','.(int) $menuid.')';
			}
		}

		if ( !empty( $tuples ) ) {
			// Module-Menu Mapping: Do it in one query
			$query = 'INSERT INTO #__modules_menu ( moduleid, menuid ) VALUES '.implode( ',', $tuples );
			$db->setQuery( $query );
			if ( !$db->query() ) {
				return JError::raiseWarning( 500, $db->getError() );
			}
		}

		$msg = JText::sprintf( 'Items Copied', $n );
		$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id, $msg );
	}

	/**
	 * Saves the module after an edit form submit
	 */
	function save()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$app = JFactory::getApplication();

		// Initialize some variables
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id );

		$post = JRequest::get( 'post' );
		// fix up special html fields
		$post['content'] = JRequest::getVar( 'content', '', 'post', 'string', JREQUEST_ALLOWRAW );
		$post['client_id'] = $client->id;

		$row = JTable::getInstance( 'module' );

		if ( !$row->bind( $post, 'selections' ) ) {
			return JError::raiseWarning( 500, $row->getError() );
		}

		if ( !$row->check() ) {
			return JError::raiseWarning( 500, $row->getError() );
		}

		// if new item, order last in appropriate group
		if ( !$row->id ) {
			$where = 'position='.$db->quote( $row->position ).' AND client_id='.( int ) $client->id;
			$row->ordering = $row->getNextOrder( $where );
		}

		if ( !$row->store() ) {
			return JError::raiseWarning( 500, $row->getError() );
		}
		$row->checkin();

		$aparams = '';
		$advancedparams = $post['advancedparams'];
		if ( !is_array( $advancedparams ) ) {
			$advancedparams = array();
		}
		foreach ( $advancedparams as $key => $value ) {
			if ( is_array( $value ) ) {
				$value = implode( '|', $value );
			} else {
				$value = str_replace( '\n', '[:REGEX_ENTER:]', $value );
				$value = str_replace( "\r\n", '\n', $value );
				$value = str_replace( '|', '\|', $value );
			}
			$aparams .= $key.'='.$value."\n";
		}

		// delete old module to menu item associations
		$query = 'REPLACE INTO #__advancedmodules ( `moduleid`, `params` )'
			.' VALUES ( '.(int) $row->id.', '.$db->quote( $aparams ).' )';
		$db->setQuery( $query );
		if ( !$db->query() ) {
			return JError::raiseWarning( 500, $db->getError() );
		}

		// delete old module to menu item associations
		$query = 'DELETE FROM #__modules_menu'
			.' WHERE moduleid = '.(int) $row->id;
		$db->setQuery( $query );
		if ( !$db->query() ) {
			return JError::raiseWarning( 500, $db->getError() );
		}

		// check needed to stop a module being assigned to `All`
		// and other menu items resulting in a module being displayed twice
		if ( $advancedparams['assignto_menuitems'] == 0 ) {
			$selections = array( 0 );
		} else {
			$selections = $advancedparams['assignto_menuitems_selection'];
			if ( $advancedparams['assignto_menuitems'] == 2 ) {
				// Flip the menu selection
				// So when Advanced Menus is disabled, the excluded items are unselected
				$query = 'SELECT id'
					.' FROM #__menu'
					.' WHERE published = 1';
				$db->setQuery( $query );
				$menuitems = $db->loadResultArray();
				$selections = array_diff( $menuitems, $selections );
			}
		}
		foreach ( $selections as $menuid ) {
			// this check for the blank spaces in the select box that have been added for cosmetic reasons
			if ( (int) $menuid >= 0 ) {
				// assign new module to menu item associations
				$query = 'INSERT INTO #__modules_menu'
					.' SET moduleid = '.(int) $row->id.', menuid = '.(int) $menuid;
				$db->setQuery( $query );
				if ( !$db->query() ) {
					return JError::raiseWarning( 500, $db->getError() );
				}
			}
		}

		// clean cache for all 3 front-end user groups (guest, reg, special)
		$cache = JFactory::getCache();
		$cache->remove( $row->id.'0', $row->module );
		$cache->remove( $row->id.'1', $row->module );
		$cache->remove( $row->id.'2', $row->module );
		// clean content cache because of loadposition plugin
		$cache->clean( 'com_content' );

		$this->setMessage( JText::_( 'Item saved' ) );
		switch ( $this->getTask() )
		{
			case 'apply':
				$link = 'index.php?option=com_advancedmodules&client='.$client->id.'&task=edit&id='.$row->id;
				if ( JRequest::getCmd( 'tmpl' ) ) {
					$link .= '&tmpl='.JRequest::getCmd( 'tmpl' );
				}
				$this->setRedirect( $link );
				break;
		}
	}

	/**
	 * Compiles information to add or edit a module
	 *
	 * @param string The current GET/POST option
	 * @param integer The unique id of the record to edit
	 */
	function edit()
	{
		// Initialize some variables
		$db = JFactory::getDBO();
		$user = JFactory::getUser();

		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$module = JRequest::getVar( 'module', '', '', 'cmd' );
		$id = JRequest::getVar( 'id', 0, 'method', 'int' );
		$cid = JRequest::getVar( 'cid', array( $id ), 'method', 'array' );
		JArrayHelper::toInteger( $cid, array( 0 ) );

		$model = $this->getModel( 'module' );
		$model->setState( 'id', $cid['0'] );
		$model->setState( 'clientId', $client->id );

		$lists = array();
		$row = JTable::getInstance( 'module' );
		// load the row from the db table
		$row->load( (int) $cid['0'] );
		// fail if checked out not by 'me'
		if ( $row->isCheckedOut( $user->get( 'id' ) ) ) {
			$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id );
			return JError::raiseWarning( 500, JText::sprintf( 'DESCBEINGEDITTED', JText::_( 'The module' ), $row->title ) );
		}

		$row->content = htmlspecialchars( $row->content, ENT_COMPAT, 'UTF-8' );

		if ( $cid['0'] ) {
			$row->checkout( $user->get( 'id' ) );
		}
		// if a new record we must still prime the JTableModel object with a default
		// position and the order; also add an extra item to the order list to
		// place the 'new' record in last position if desired
		if ( $cid['0'] == 0 ) {
			$row->position = 'left';
			$row->showtitle = true;
			$row->published = 1;
			//$row->ordering = $l;

			$row->module = $module;
		}

		if ( $client->id == 1 ) {
			$where = 'client_id = 1';
			$lists['client_id'] = 1;
			$path = 'mod1_xml';
		} else {
			$where = 'client_id = 0';
			$lists['client_id'] = 0;
			$path = 'mod0_xml';
		}

		$query = 'SELECT position, ordering, showtitle, title'
			.' FROM #__modules'
			.' WHERE '.$where
			.' ORDER BY ordering';
		$db->setQuery( $query );
		$orders = $db->loadObjectList();
		if ( $db->getErrorNum() ) {
			echo $db->stderr();
			return false;
		}

		$orders2 = array();

		$l = 0;
		$r = 0;
		for ( $i = 0, $n = count( $orders ); $i < $n; $i++ ) {
			$ord = 0;
			if ( array_key_exists( $orders[$i]->position, $orders2 ) ) {
				$ord = count( array_keys( $orders2[$orders[$i]->position] ) ) + 1;
			}

			$orders2[$orders[$i]->position][] = JHtml::_( 'select.option', $ord, $ord.'::'.htmlspecialchars( $orders[$i]->title ) );
		}

		$color = 'FFFFFF';
		if ( $client->id != 1 ) {
			$parameters = NNParameters::getInstance();
			$config = JComponentHelper::getParams( 'com_advancedmodules' );
			$config = $parameters->getParams( $config->_raw, JPATH_ADMINISTRATOR.'/components/com_advancedmodules/config.xml' );
			$advanced_params = new stdClass();
			$xmlfile = JPATH_ADMINISTRATOR.'/components/com_advancedmodules/assignments.xml';
			if ( !$cid['0'] ) {
				$lists['assignments'] = new JParameter( '', $xmlfile );
				// hide if empty
				$lists['hideempty'] = JHtml::_( 'select.booleanlist', 'advancedparams[hideempty]', 'class="inputbox"', 0, 'yes', 'no', 'advancedparamshideempty' );
				// tooltip
				$lists['tooltip'] = '<textarea class="text_area" rows="3" cols="40" name="advancedparams[tooltip]" id="advancedparamstooltip"></textarea>';
			} else {
				// advanced params
				$query = 'SELECT params'
					.' FROM #__advancedmodules'
					.' WHERE moduleid = '.(int) $row->id;
				$db->setQuery( $query );
				$advanced_params = $db->loadResult();

				if ( !$advanced_params || strpos( $advanced_params, 'assignto_' ) === false ) {
					$advanced_params = $this->updateParams( $row->id, $advanced_params );
				}

				$lists['assignments'] = new JParameter( $advanced_params, $xmlfile );

				$advanced_params = $parameters->getParams( $advanced_params );

				// hide if empty
				$lists['hideempty'] = JHtml::_( 'select.booleanlist', 'advancedparams[hideempty]', 'class="inputbox"', isset( $advanced_params->hideempty ) ? $advanced_params->hideempty : 0, 'yes', 'no', 'advancedparamshideempty' );
				// tooltip
				$lists['tooltip'] = '<textarea class="text_area" rows="3" cols="40" name="advancedparams[tooltip]" id="advancedparamstooltip">'.( isset( $advanced_params->tooltip ) ? $advanced_params->tooltip : '' ).'</textarea>';
				if ( isset( $advanced_params->color ) ) {
					$color = strtoupper( preg_replace( '#[^a-z0-9]#si', '', $advanced_params->color ) );
				}
			}
			require_once JPATH_SITE.'/plugins/system/nnframework/fields/colorpicker.php';
			$cp = new JElementNN_ColorPicker();
			$node = new JSimpleXMLElement( '' );
			$lists['color'] = $cp->fetchElement( 'color', $color, $node, 'advancedparams' );

			$lists['extra'] = '';
			if ( $config->show_extra ) {
				if ( $config->extra1 ) {
					$xml = new JSimpleXMLElement( 'extra', array() );
					$extraparams = array();
					for ( $i = 1; $i <= 5; $i++ ) {
						$var = 'extra'.$i;
						if ( $config->$var ) {
							$a = array();
							$a['name'] = $var;
							$a['type'] = 'text';
							$label = explode( '\|', $config->$var, 2 );
							$a['label'] = $label['0'];
							if ( isset( $label['1'] ) ) {
								$a['description'] = $label['1'];
							}
							$xml->addChild( 'extra1', $a );
						}
						if ( isset( $advanced_params->$var ) ) {
							$extraparams[] = $var.'='.$advanced_params->$var;
						}
					}

					$p = new JParameter( implode( "\n", $extraparams ) );
					$p->setXML( $xml );
					if ( $p->getNumParams() ) {
						$lists['extra'] = $p->render( 'advancedparams' );
					}
				}
			}
		}

		if ( $row->access == 99 || $row->client_id == 1 || $lists['client_id'] ) {
			$lists['access'] = 'Administrator';
			$lists['showtitle'] = 'N/A <input type="hidden" name="showtitle" value="1" />';
			$lists['selections'] = 'N/A';
		} else {
			if ( $client->id == '1' ) {
				$lists['access'] = 'N/A';
			} else {
				$lists['access'] = JHtml::_( 'list.accesslevel', $row );
			}
			$lists['showtitle'] = JHtml::_( 'select.booleanlist', 'showtitle', 'class="inputbox"', $row->showtitle );
		}

		// build the html select list for published
		$lists['published'] = JHtml::_( 'select.booleanlist', 'published', 'class="inputbox"', $row->published );

		$row->description = '';

		$lang = JFactory::getLanguage();
		if ( $client->id != '1' ) {
			$lang->load( trim( $row->module ), JPATH_SITE );
		} else {
			$lang->load( trim( $row->module ) );
		}

		// xml file for module
		if ( $row->module == 'custom' ) {
			$xmlfile = JApplicationHelper::getPath( $path, 'mod_custom' );
		} else {
			$xmlfile = JApplicationHelper::getPath( $path, $row->module );
		}

		$data = JApplicationHelper::parseXMLInstallFile( $xmlfile );
		if ( $data ) {
			foreach ( $data as $key => $value ) {
				$row->$key = $value;
			}
		}

		// get params definitions
		$params = new JParameter( $row->params, $xmlfile, 'module' );

		require_once JApplicationHelper::getPath( 'admin_html' );
		HTML_modules::edit( $model, $row, $orders2, $lists, $params, $client );
	}

	/**
	 * Displays a list to select the creation of a new module
	 */
	function add()
	{
		$app = JFactory::getApplication();

		// Initialize some variables
		$modules = array();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );

		// path to search for modules
		if ( $client->id == '1' ) {
			$path = JPATH_ADMINISTRATOR.'/modules';
			$langbase = JPATH_ADMINISTRATOR;
		} else {
			$path = JPATH_ROOT.'/modules';
			$langbase = JPATH_ROOT;
		}

		jimport( 'joomla.filesystem.folder' );
		$dirs = JFolder::folders( $path );
		$lang = JFactory::getLanguage();

		foreach ( $dirs as $dir ) {
			if ( substr( $dir, 0, 4 ) == 'mod_' ) {
				$files = JFolder::files( $path.'/'.$dir, '^([_A-Za-z0-9]*)\.xml$' );
				if ( count( $files ) ) {
					$module = new stdClass;
					$module->file = $files['0'];
					$module->module = str_replace( '.xml', '', $files['0'] );
					$module->path = $path.'/'.$dir;
					$modules[] = $module;

					$lang->load( $module->module, $langbase );
				}
			}
		}

		require_once JPATH_COMPONENT.'/helpers/xml.php';
		ModulesHelperXML::parseXMLModuleFile( $modules, $client );

		foreach ( $modules as $i => $module ) {
			if ( isset( $module->name ) ) {
				$modules[$i]->name = JText::_( stripslashes( $module->name ) );
			} else if ( isset( $module->module ) ) {
				$modules[$i]->name = JText::_( stripslashes( $module->module ) );
			} else {
				$modules[$i]->name = '';
			}
			if ( !isset( $module->descrip ) ) {
				$modules[$i]->descrip = '';
			}
		}

		// sort array of objects alphabetically by name
		JArrayHelper::sortObjects( $modules, 'name' );

		require_once JApplicationHelper::getPath( 'admin_html' );
		HTML_modules::add( $modules, $client );
	}

	/**
	 * Deletes one or more modules
	 *
	 * Also deletes associated entries in the #__module_menu table.
	 *
	 * @param array An array of unique category id numbers
	 */
	function remove()
	{
		$app = JFactory::getApplication();

		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		// Initialize some variables
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger( $cid );

		if ( empty( $cid ) ) {
			return JError::raiseWarning( 500, 'No items selected' );
		}

		$cids = implode( ',', $cid );

		// remove mappings first (lest we leave orphans)
		$query = 'DELETE FROM #__modules_menu'
			.' WHERE moduleid IN ( '.$cids.' )';
		$db->setQuery( $query );
		if ( !$db->query() ) {
			return JError::raiseError( 500, $db->getErrorMsg() );
		}
		// remove module
		$query = 'DELETE FROM #__modules'
			.' WHERE id IN ( '.$cids.' )';
		$db->setQuery( $query );
		if ( !$db->query() ) {
			return JError::raiseError( 500, $db->getErrorMsg() );
		}

		$this->setMessage( JText::sprintf( 'Items removed', count( $cid ) ) );
	}

	/**
	 * Publishes or Unpublishes one or more modules
	 */
	function publish()
	{
		$app = JFactory::getApplication();

		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		// Initialize some variables
		$db = JFactory::getDBO();
		$user = JFactory::getUser();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id );

		$cache = JFactory::getCache();
		$cache->clean( 'com_content' );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger( $cid );

		$task = $this->getTask();
		$publish = ( $task == 'publish' );

		if ( empty( $cid ) ) {
			return JError::raiseWarning( 500, 'No items selected' );
		}

		$cids = implode( ',', $cid );

		$query = 'UPDATE #__modules'
			.' SET published = '.intval( $publish )
			.' WHERE id IN ( '.$cids.' )'
			.' AND ( checked_out = 0 OR ( checked_out = '.(int) $user->get( 'id' ).' ) )';
		$db->setQuery( $query );
		if ( !$db->query() ) {
			return JError::raiseWarning( 500, $db->getErrorMsg() );
		}

		if ( count( $cid ) == 1 ) {
			$row = JTable::getInstance( 'module' );
			$row->checkin( $cid['0'] );
		}
	}

	/**
	 * Cancels an edit operation
	 */
	function cancel()
	{
		$app = JFactory::getApplication();

		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		// Initialize some variables
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id );

		$row = JTable::getInstance( 'module' );
		// ignore array elements
		$row->bind( JRequest::get( 'post' ), 'selections params' );
		$row->checkin();
	}

	/**
	 * Moves the order of a record
	 */
	function reorder()
	{
		$app = JFactory::getApplication();

		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		// Initialize some variables
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger( $cid );

		$task = $this->getTask();
		$inc = ( $task == 'orderup' ? -1 : 1 );

		if ( empty( $cid ) ) {
			return JError::raiseWarning( 500, 'No items selected' );
		}

		$row = JTable::getInstance( 'module' );
		$row->load( (int) $cid['0'] );

		$row->move( $inc, 'position = '.$db->quote( $row->position ).' AND client_id='.(int) $client->id );
	}

	/**
	 * Changes the access level of a record
	 */
	function access()
	{
		$app = JFactory::getApplication();

		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		// Initialize some variables
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger( $cid );

		$task = JRequest::getCmd( 'task' );

		if ( empty( $cid ) ) {
			return JError::raiseWarning( 500, 'No items selected' );
		}

		switch ( $task )
		{
			case 'accesspublic':
				$access = 0;
				break;

			case 'accessregistered':
				$access = 1;
				break;

			case 'accessspecial':
				$access = 2;
				break;
		}

		$row = JTable::getInstance( 'module' );
		$row->load( (int) $cid['0'] );
		$row->access = $access;

		if ( !$row->check() ) {
			JError::raiseWarning( 500, $row->getError() );
		}
		if ( !$row->store() ) {
			JError::raiseWarning( 500, $row->getError() );
		}
	}

	/**
	 * Saves the orders of the supplied list
	 */
	function saveOrder()
	{
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		// Initialize some variables
		$db = JFactory::getDBO();
		$client = JApplicationHelper::getClientInfo( JRequest::getVar( 'client', '0', '', 'int' ) );
		$this->setRedirect( 'index.php?option=com_advancedmodules&client='.$client->id );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger( $cid );

		if ( empty( $cid ) ) {
			return JError::raiseWarning( 500, 'No items selected' );
		}

		$total = count( $cid );
		$row = JTable::getInstance( 'module' );
		$groupings = array();

		$order = JRequest::getVar( 'order', array( 0 ), 'post', 'array' );
		JArrayHelper::toInteger( $order );

		// update ordering values
		for ( $i = 0; $i < $total; $i++ )
		{
			$row->load( (int) $cid[$i] );
			// track postions
			$groupings[] = $row->position;

			if ( $row->ordering != $order[$i] ) {
				$row->ordering = $order[$i];
				if ( !$row->store() ) {
					return JError::raiseWarning( 500, $db->getErrorMsg() );
				}
			}
		}

		// execute updateOrder for each parent group
		$groupings = array_unique( $groupings );
		foreach ( $groupings as $group ) {
			$row->reorder( 'position = '.$db->quote( $group ).' AND client_id = '.(int) $client->id );
		}

		$this->setMessage( JText::_( 'New ordering saved' ) );
	}

	function preview()
	{
		$document = JFactory::getDocument();
		$document->setTitle( JText::_( 'AMM_MODULE_PREVIEW' ) );

		require_once JApplicationHelper::getPath( 'admin_html' );
		HTML_modules::preview();
	}

	function updateParams( $id, $params )
	{
		$db = JFactory::getDBO();

		$assignto_menuitems = 1;
		$selection = array();

		if ( $params ) {
			if ( strpos( $params, 'assignto_' ) === false ) {
				$params = str_replace( 'limit_', 'assignto_', $params ); // fix old param names

				$query = 'UPDATE #__advancedmodules'
					.' SET params = '.$db->quote( $params )
					.' WHERE moduleid = '.(int) $id;
				$db->setQuery( $query );
				$db->query();
			}

			$db->setQuery( 'show tables like '.$db->quote( $db->getPrefix().'advancedmodules_menu' ) );
			$exists = $db->loadResult();
			if ( $exists ) {
				$assignto_menuitems = 2;
				$query = 'SELECT menuid AS value'
					.' FROM #__advancedmodules_menu'
					.' WHERE moduleid = '.(int) $id;
				$db->setQuery( $query );
				$selection = $db->loadResultArray();
			}
		}

		if ( empty( $selection ) ) {
			$assignto_menuitems = 1;
			$query = 'SELECT menuid AS value'
				.' FROM #__modules_menu'
				.' WHERE moduleid = '.(int) $id;
			$db->setQuery( $query );
			$selection = $db->loadResultArray();
			if ( !empty( $selection ) == 1 && $selection['0'] == 0 ) {
				$assignto_menuitems = 0;
			}
		}

		$params .= "\nassignto_menuitems=".$assignto_menuitems."\nassignto_menuitems_selection=".implode( '|', $selection );
		$query = 'REPLACE INTO #__advancedmodules'
			.' ( `moduleid`, `params` ) VALUES'
			.' ( '.(int) $id.', '.$db->quote( trim( $params ) ).' )';
		$db->setQuery( $query );
		$db->query();

		return trim( $params );
	}
}