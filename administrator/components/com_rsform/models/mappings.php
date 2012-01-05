<?php
/**
* @version 1.4.0
* @package RSform!Pro 1.4.0
* @copyright (C) 2007-2011 www.rsjoomla.com
* @license GPL, http://www.gnu.org/copyleft/gpl.html
*/

defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.model');

class RSFormModelMappings extends JModel
{
	var $_data = null;
	var $_total = 0;
	var $_query = '';
	var $_pagination = null;
	var $_db = null;
	var $_form = null;
	var $_options = array();
	
	function __construct()
	{
		parent::__construct();
		$this->_db = JFactory::getDBO();
	}
	
	function getMapping()
	{
		$mid = JRequest::getInt('cid',0);
		$row =& JTable::getInstance('RSForm_Mappings', 'Table');
		$row->load($mid);
		
		return $row;
	}
	
	function save()
	{
		$post	= JRequest::get('post');
		$row	=& JTable::getInstance('RSForm_Mappings', 'Table');
		
		if (!$row->bind($post))
		{
			JError::raiseWarning(500, $row->getError());
			return false;
		}
		
		if (empty($row->id))
			$row->ordering = $row->getNextOrder("formId = '".$row->formId."' ");
		
		$data = array();		$where = array();
		$extra = array();		$andor = array();
		
		if (!empty($post))
		foreach ($post as $key => $value)
		{
			$value = trim($value);
			if (empty($value)) continue;
			
			if (substr($key,0,2) == 'f_')
			{
				$datakey = str_replace('f_','',$key);
				$data[$datakey] = $value;
			}
			
			if (substr($key,0,2) == 'w_')
			{
				$wherekey = str_replace('w_','',$key);
				$where[$wherekey] = $value;
				
				$extra[$wherekey] = isset($post['o_'.$wherekey]) ? $post['o_'.$wherekey] : '=';
				$andor[$wherekey] = isset($post['c_'.$wherekey]) ? $post['c_'.$wherekey] : 0;
				
			}
		}
		
		if (($row->method == 0 || $row->method == 1) && empty($data))
			return false;
		
		if ($row->method == 2 && empty($where))
			return false;
		
		$where = serialize($where);
		$data = serialize($data);
		$extra = serialize($extra);
		$andor = serialize($andor);
		$row->data = $data;
		$row->wheredata = $where;
		$row->extra = $extra;
		$row->andor = $andor;
		
		if ($row->store())
			return $row;
		else 
		{
			JError::raiseWarning(500, $row->getError());
			return false;
		}
	}
	
	function remove()
	{
		$mid	= JRequest::getInt('mid');
		$row	=& JTable::getInstance('RSForm_Mappings', 'Table');
		$row->load($mid);
		$formId = $row->formId;
		
		$row->delete($mid);
		$row->reorder("formId = '".$formId."' ");
	}
	
	function getColumns($config)
	{
		$db = $this->mappingDBO($config);
		$tables = $db->getTableList();
		$table = isset($config['table']) ? $config['table'] : '';
		
		if (empty($table)) return array();
		if (!in_array($table,$tables)) return array();
		$columns = $db->getTableFields($table);
		
		return $columns;
	}
	
	function getFields()
	{
		$db		=& JFactory::getDBO();
		$formId	= JRequest::getInt('formId');
		
		$db->setQuery("SELECT p.PropertyValue FROM #__rsform_components c LEFT JOIN #__rsform_properties p ON (c.ComponentId=p.ComponentId) WHERE c.FormId='".(int) $formId."' AND p.PropertyName='NAME' ORDER BY c.Order");
		return $db->loadResultArray();
	}
	
	function getMappingTables($config)
	{
		$db = $this->mappingDBO($config);
		
		if (is_string($db))
			return $db;
		
		//get tables
		$tables = $db->getTableList();
		return $tables;
	}
	
	function mappingDBO($config)
	{
		$database =& JFactory::getDBO();
		if ($config['connection'])
		{
			$options = array(
				'host' => 	  $config['host'],
				'user' => 	  $config['username'],
				'password' => $config['password'],
				'database' => $config['database']
				);
			
			
			$database2 = JDatabase::getInstance($options);
			
			if (is_a($database2,'JException'))
				return $database2->getMessage();
			
			return $database2;
		}
		return $database;
	}
}
?>