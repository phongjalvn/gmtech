<?php
/**
 * Plugin Helper File
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

/**
 * Plugin that gives advanced features for modules
 */
class plgSystemAdvancedModulesHelper
{
	/*
	 * Place slider with active modules for given Itemid
	 */
	function onAfterDispatch()
	{
		$option = JRequest::getCmd( 'option' );

		if (
			$option != 'com_menus'
			|| !$this->config->show_activemodules
		) {
			return;
		}

		// Get cid
		$cid = JRequest::getVar( 'cid', array( 0 ), 'method', 'array' );
		$cid = array( (int) $cid['0'] );
		$id = $cid['0'];

		// return if no cid is set
		if ( !$id ) {
			return;
		}

		$document = JFactory::getDocument();

		if (
			!isset( $document->_buffer )
			|| !isset( $document->_buffer['component'] )
			|| !is_array( $document->_buffer['component'] )
			|| !count( $document->_buffer['component'] )
		) {
			return;
		}

		// load plugin language file
		$lang = JFactory::getLanguage();
		if ( $lang->getTag() != 'en-GB' ) {
			// Loads English language file as fallback (for undefined stuff in other language file)
			$lang->load( 'plg_system_advancedmodules', JPATH_ADMINISTRATOR, 'en-GB' );
		}
		$lang->load( 'plg_system_advancedmodules', JPATH_ADMINISTRATOR );

		jimport( 'joomla.html.pane' );
		$slider = JPane::getInstance( 'sliders', array( 'allowAllClose' => true ) );

		$pane = $slider->startPanel( JText::_( 'AMM_ACTIVE_MODULES' ), "advancedmodules-page" );
		$pane .= $this->getModulesTable( $id );
		$pane .= $slider->endPanel();

		$search = '#(<div [^>]*id="menu-pane"[^>]*>.*)(<\/div>.*<\/td>.*<\/table>.*<\/form>)#si';
		$r = '\1'.$pane.'\2';

		foreach ( $document->_buffer['component'] as $i => $buffer ) {
			$s = $search;
			if ( @preg_match( $s.'u', $buffer ) ) {
				$s .= 'u';
			}
			if ( preg_match( $s, $buffer ) ) {
				$document->_buffer['component'][$i] = preg_replace( $s, $r, $buffer );
			}
		}
	}

	function getModulesTable( $id )
	{
		JHtml::_( 'behavior.modal' );

		$user = JFactory::getUser();
		$modules = $this->getAdvancedModules( $id );

		if ( !count( $modules ) ) {
			return '<p style="text-align:center;">'.JText::_( 'AMM_NO_ACTIVE_MODULES' ).'</p>';
		}

		$table = '
			<table class="adminlist" cellspacing="1">
				<thead>
					<tr>
						<th>'.JText::_( 'Module Name' ).'</th>
						<th>'.JText::_( 'Position' ).'</th>
						<th>'.JText::_( 'Type' ).'</th>
						<th>'.JText::_( 'Access' ).'</th>
						<th>'.JText::_( 'ID' ).'</th>
					</tr>
				</thead>
				<tbody>';
		foreach ( $modules as $module ) {
			$access = JHtml::_( 'grid.access', $module, NULL, 1 );
			if ( JTable::isCheckedOut( $user->get( 'id' ), $module->checked_out ) ) {
				$title = $module->title;
			} else {
				$link = JRoute::_( 'index.php?option=com_advancedmodules&client=0&task=edit&tmpl=component&cid[]='.$module->id );
				$title = '
					<span class="editlinktip hasTip" title="'.JText::_( 'AMM_EDIT_MODULE' ).'::'.$module->title.'">
						<a href="'.$link.'" class="modal" rel="{handler: \'iframe\', size: {x:window.getSize().size.x-100, y: window.getSize().size.y-100}}">'.$module->title.'</a>
					</span>';
			}
			$table .= '
					<tr>
						<td>'.$title.'</td>
						<td>'.$module->position.'</td>
						<td>'.$module->module.'</td>
						<td>'.$access.'</td>
						<td>'.$module->id.'</td>
					</tr>';
		}
		$table .= '
				</tbody>
			</table>';

		return $table;
	}

	function getAdvancedModules( $Itemid )
	{
		require_once JPATH_PLUGINS.'/system/nnframework/helpers/parameters.php';
		$parameters = NNParameters::getInstance();

		$db = JFactory::getDBO();

		$query = 'SELECT m.id, m.title, m.module, m.position, m.checked_out, m.access,'
			.' am.params as adv_params,'
			.' g.name AS groupname'
			.' FROM #__modules AS m'
			.' LEFT JOIN #__advancedmodules AS am ON am.moduleid = m.id'
			.' LEFT JOIN #__groups AS g ON g.id = m.access'
			.' WHERE m.published = 1'
			.' AND m.client_id = 0'
			.' GROUP BY m.id'
			.' ORDER BY m.position, m.ordering, m.id';

		$db->setQuery( $query );

		if ( null === ( $modules = $db->loadObjectList( 'id' ) ) ) {
			JError::raiseWarning( 'SOME_ERROR_CODE', JText::_( 'AMM_ERROR_LOADING_MODULES' ).$db->getErrorMsg() );
			return false;
		}

		require_once JPATH_PLUGINS.'/system/nnframework/helpers/assignments.php';
		$assignments = new NNFrameworkAssignmentsHelper;
		$assignments->_params->Itemid = $Itemid;
		$xmlfile = JPATH_ADMINISTRATOR.'/components/com_advancedmodules/assignments.xml';

		$ordered = array();

		foreach ( $modules as $id => $module ) {
			$module->adv_params = $parameters->getParams( $module->adv_params, $xmlfile );

			if ( $module->adv_params->assignto_menuitems ) {
				$params = null;
				$params->assignment = $module->adv_params->assignto_menuitems;
				$params->selection = $module->adv_params->assignto_menuitems_selection;
				$params->params = null;
				$params->params->inc_children = $module->adv_params->assignto_menuitems_inc_children;
				$params->params->inc_noItemid = $module->adv_params->assignto_menuitems_inc_noitemid;

				$assignments->initParams( $params, 'MenuItem' );
				$pass = $assignments->passMenuItem( $params->params, $params->selection, $params->assignment );

				if ( !$pass ) {
					continue;
				}
			}
			$ordered[] = $modules[$id];
		}
		unset( $modules );
		return $ordered;
	}

	/*
	 * Replace links to com_modules with com_advancedmodules
	 */
	function onAfterRender()
	{
		JResponse::setBody( preg_replace( '#(option=com_)(modules[^a-z-_])#', '\1advanced\2', JResponse::getBody() ) );
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
			.' ( '.(int ) $id.', '.$db->quote( trim( $params ) ).' )';
		$db->setQuery( $query );
		$db->query();

		return trim( $params );
	}
}