<?php
/**
* @version 1.4.0
* @package RSform!Pro 1.4.0
* @copyright (C) 2007-2011 www.rsjoomla.com
* @license GPL, http://www.gnu.org/copyleft/gpl.html
*/

defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.model');

class RSFormModelForms extends JModel
{
	var $_data = null;
	var $_mdata = null;
	var $_total = 0;
	var $_mtotal = 0;
	var $_query = '';
	var $_mquery = '';
	var $_pagination = null;
	var $_db = null;
	var $_form = null;
	
	function __construct()
	{
		parent::__construct();
		$this->_db = JFactory::getDBO();
		$this->_query = $this->_buildQuery();
		$this->_mquery = $this->_buildMQuery();
		
		$mainframe =& JFactory::getApplication();
		$option    =  JRequest::getVar('option', 'com_rsform');
		
		// Get pagination request variables
		$limit = $mainframe->getUserStateFromRequest($option.'.forms.limit', 'limit', $mainframe->getCfg('list_limit'), 'int');
		$limitstart = $mainframe->getUserStateFromRequest($option.'.forms.limitstart', 'limitstart', 0, 'int');

		// In case limit has been changed, adjust it
		$limitstart = ($limit != 0 ? (floor($limitstart / $limit) * $limit) : 0);

		$this->setState($option.'.forms.limit', $limit);
		$this->setState($option.'.forms.limitstart', $limitstart);
	}
	
	function _buildQuery()
	{
		$query  = "SELECT * FROM #__rsform_forms WHERE 1";
		$query .= " ORDER BY `".$this->getSortColumn()."` ".$this->getSortOrder();
		
		return $query;
	}
	
	function _buildMQuery()
	{
		$formId		= JRequest::getInt('formId');
		$query = "SELECT * FROM `#__rsform_mappings` WHERE `formId` = ".$formId." ORDER BY `ordering` ASC";
		
		return $query;
	}
	
	function getForms()
	{
		$option = JRequest::getVar('option', 'com_rsform');
		
		if (empty($this->_data))
			$this->_data = $this->_getList($this->_query, $this->getState($option.'.forms.limitstart'), $this->getState($option.'.forms.limit'));
		
		foreach ($this->_data as $i => $row)
		{
			$this->_db->setQuery("SELECT COUNT(`SubmissionId`) cnt FROM #__rsform_submissions WHERE date_format(DateSubmitted,'%Y-%m-%d') = '".date('Y-m-d')."' AND FormId='".$row->FormId."'");
			$row->_todaySubmissions = $this->_db->loadResult();

			$this->_db->setQuery("SELECT COUNT(`SubmissionId`) cnt FROM #__rsform_submissions WHERE date_format(DateSubmitted,'%Y-%m') = '".date('Y-m')."' AND FormId='".$row->FormId."'");
			$row->_monthSubmissions = $this->_db->loadResult();
	
			$this->_db->setQuery("SELECT COUNT(`SubmissionId`) cnt FROM #__rsform_submissions WHERE FormId='".$row->FormId."'");
			$row->_allSubmissions = $this->_db->loadResult();
		}
		
		return $this->_data;
	}
	
	function getTotal()
	{
		if (empty($this->_total))
			$this->_total = $this->_getListCount($this->_query); 
		
		return $this->_total;
	}
	
	function getPagination()
	{
		if (empty($this->_pagination))
		{
			$option = JRequest::getVar('option', 'com_rsform');
			jimport('joomla.html.pagination');
			$this->_pagination = new JPagination($this->getTotal(), $this->getState($option.'.forms.limitstart'), $this->getState($option.'.forms.limit'));
		}
		
		return $this->_pagination;
	}
	
	function getSortColumn()
	{
		$mainframe =& JFactory::getApplication();
		$option    =  JRequest::getVar('option', 'com_rsform');
		return $mainframe->getUserStateFromRequest($option.'.forms.filter_order', 'filter_order', 'FormId', 'word');
	}
	
	function getSortOrder()
	{
		$mainframe =& JFactory::getApplication();
		$option    =  JRequest::getVar('option', 'com_rsform');
		return $mainframe->getUserStateFromRequest($option.'.forms.filter_order_Dir', 'filter_order_Dir', 'ASC', 'word');
	}
	
	function getHasSubmitButton()
	{
		$formId = JRequest::getInt('formId');
		
		$this->_db->setQuery("SELECT ComponentId FROM #__rsform_components WHERE FormId='".$formId."' AND ComponentTypeId IN (13,12) LIMIT 1");
		return $this->_db->loadResult();
	}
	
	function getFields()
	{
		$formId = JRequest::getInt('formId');
		
		$return = array();
		
		$this->_db->setQuery("SELECT p.PropertyValue AS ComponentName, c.*, ct.ComponentTypeName FROM #__rsform_components c LEFT JOIN #__rsform_properties p ON (c.ComponentId=p.ComponentId AND p.PropertyName='NAME') LEFT JOIN #__rsform_component_types ct ON (ct.ComponentTypeId = c.ComponentTypeId) WHERE c.FormId='".$formId."' ORDER BY c.Order");
		$components = $this->_db->loadObjectList();
		
		$properties = RSFormProHelper::getComponentProperties($components);
		
		foreach ($components as $component)
		{
			$data = $properties[$component->ComponentId];
			$data['componentId'] = $component->ComponentId;
			$data['componentTypeId'] = $component->ComponentTypeId;
			$data['ComponentTypeName'] = $component->ComponentTypeName;
			
			$field = new stdClass();
			$field->id = $component->ComponentId;
			$field->type_id = $component->ComponentTypeId;
			$field->name = $component->ComponentName;
			$field->published = $component->Published;
			$field->ordering = $component->Order;
			$field->preview = RSFormProHelper::showPreview($formId, $field->id, $data);
			$field->required = isset($data['REQUIRED']) && $data['REQUIRED'] == 'YES' ? '<b>'.JText::_($data['REQUIRED']).'</b>' : JText::_('NO');
			$field->validation = isset($data['VALIDATIONRULE']) && $data['VALIDATIONRULE'] != 'none' ? '<b>'.$data['VALIDATIONRULE'].'</b>' : '-';
			
			$return[] = $field;
		}
		return $return;
	}
	
	function getFieldsTotal()
	{
		$formId = JRequest::getInt('formId');
		
		$this->_db->setQuery("SELECT COUNT(ComponentId) FROM #__rsform_components WHERE FormId='".$formId."'");
		return $this->_db->loadResult();
	}
	
	function getFieldsPagination()
	{
		jimport('joomla.html.pagination');
		
		$pagination	= new JPagination($this->getFieldsTotal(), 1, 0);
		// hack to show the order up icon for the first item
		$pagination->limitstart = 1;
		return $pagination;
	}
	
	function getForm()
	{
		$formId = JRequest::getInt('formId');
		
		if (empty($this->_form))
		{
			$this->_form = JTable::getInstance('RSForm_Forms', 'Table');
			$this->_form->load($formId);
			
			if (empty($this->_form->Lang))
			{
				$language =& JFactory::getLanguage();
				$this->_form->Lang = $language->getTag();
			}
			
			if ($this->_form->FormLayoutAutogenerate)
				$this->autoGenerateLayout();
			
			$this->_form->ThemeParams = new JParameter($this->_form->ThemeParams);
			
			$lang = $this->getLang();
			if ($lang != $this->_form->Lang)
			{
				$translations = RSFormProHelper::getTranslations('forms', $this->_form->FormId, $lang);
				if ($translations)
					foreach ($translations as $field => $value)
					{
						if (isset($this->_form->$field))
							$this->_form->$field = $value;
					}
			}
		}
		
		return $this->_form;
	}
	
	function autoGenerateLayout()
	{
		$formId = $this->_form->FormId;
		
		$filter = JFilterInput::getInstance();
		
		$layout = JPATH_ADMINISTRATOR.DS.'components'.DS.'com_rsform'.DS.'layouts'.DS.$filter->clean($this->_form->FormLayoutName, 'path').'.php';
		if (!file_exists($layout))
			return false;
		
		$quickfields = $this->getQuickFields();
		$requiredfields = $this->getRequiredFields();
		$pagefields = $this->getPageFields();
			
		$this->_form->FormLayout = include($layout);
	}
	
	function getRequiredFields()
	{
		$formId = JRequest::getInt('formId');
		
		$names = array();
		
		$this->_db->setQuery("SELECT p.PropertyName, p.PropertyValue, c.ComponentId FROM #__rsform_properties p LEFT JOIN #__rsform_components c ON (p.ComponentId = c.ComponentId) WHERE c.FormId='".$formId."' AND (p.PropertyName='REQUIRED' OR p.PropertyName='NAME') AND c.Published='1' ORDER BY c.Order");
		$results = $this->_db->loadObjectList();
		foreach ($results as $result)
		{
			if ($result->PropertyName == 'REQUIRED' && $result->PropertyValue == 'YES')
				$names[$result->ComponentId] = $result->ComponentId;
		}
		
		$return = array();
		foreach ($results as $result)
		{
			if ($result->PropertyName == 'NAME' && isset($names[$result->ComponentId]))
			{
				$return[] = $result->PropertyValue;
				unset($names[$result->ComponentId]);
			}
		}
		
		return $return;
	}
	
	function getQuickFields()
	{
		$formId = JRequest::getInt('formId');
		
		$this->_db->setQuery("SELECT p.PropertyValue FROM #__rsform_properties p LEFT JOIN #__rsform_components c ON (p.ComponentId = c.ComponentId) WHERE c.FormId='".$formId."' AND p.PropertyName='NAME' AND c.Published='1' ORDER BY c.Order");
		
		return $this->_db->loadResultArray();
	}
	
	function getPageFields()
	{
		$formId = JRequest::getInt('formId');
		
		$this->_db->setQuery("SELECT p.PropertyValue FROM #__rsform_properties p LEFT JOIN #__rsform_components c ON (p.ComponentId = c.ComponentId) WHERE c.FormId='".$formId."' AND p.PropertyName='NAME' AND c.Published='1' AND c.ComponentTypeId='41' ORDER BY c.Order");
		
		return $this->_db->loadResultArray();
	}
	
	function getFormList()
	{
		$return = array();
		
		$formId = JRequest::getInt('formId');
		
		$this->_db->setQuery("SELECT FormId, FormTitle FROM #__rsform_forms ORDER BY `".$this->getSortColumn()."` ".$this->getSortOrder());
		$results = $this->_db->loadObjectList();
		foreach ($results as $result)
			$return[] = JHTML::_('select.option', $result->FormId, $result->FormTitle, 'value', 'text', $result->FormId == $formId);
		
		return $return;
	}
	
	function getAdminEmail()
	{
		$user = JFactory::getUser();
		return $user->get('email');
	}
	
	function getPredefinedForms()
	{
		$return = array();
		
		$return[] = JHTML::_('select.option', '', JText::_('RSFP_PREDEFINED_BLANK_FORM'));
		
		jimport('joomla.filesystem.folder');
		$folders = JFolder::folders(JPATH_ADMINISTRATOR.DS.'components'.DS.'com_rsform'.DS.'assets'.DS.'forms');
		foreach ($folders as $folder)
			$return[] = JHTML::_('select.option', $folder, $folder);
		
		return $return;
	}
	
	function getEditorText()
	{
		$formId = JRequest::getInt('formId');
		$opener = JRequest::getCmd('opener');
		
		$this->_db->setQuery("SELECT `".$opener."` FROM #__rsform_forms WHERE FormId='".$formId."'");
		$value = $this->_db->loadResult();
		
		$lang = $this->getLang();
		$translations = RSFormProHelper::getTranslations('forms', $formId, $lang);
		if ($translations && isset($translations[$opener]))
			$value = $translations[$opener];
		
		return $value;
	}
	
	function getThemes()
	{
		jimport('joomla.filesystem.folder');
		
		$return = array();
		
		$data = new stdClass();
		$data->name = JText::_('NONE');
		$data->directory = $data->img_path = $data->version = $data->creationdate = $data->authorEmail = $data->authorUrl = $data->author = '';
		
		$return[] = $data;
		
		$dirs = JFolder::folders(JPATH_SITE.DS.'components'.DS.'com_rsform'.DS.'assets'.DS.'themes', '.', false, true);
		foreach ($dirs as $i => $dir)
		{
			$data = $this->_parseXML($dir);
			if ($data)
				$return[] = $data;
		}
		
		return $return;
	}
	
	function _parseXML($dir)
	{
		// Read the file to see if it's a valid component XML file
		$xml = & JFactory::getXMLParser('Simple');

		$files = JFolder::files($dir, '\.xml');
		if (!count($files))
			return false;
		
		$file = reset($files);
		$path = $dir.DS.$file;
		
		if (!$xml->loadFile($path)) {
			unset($xml);
			return false;
		}
		
		if (!is_object($xml->document)) {
			unset($xml);
			return false;
		}
		
		$data = new stdClass();
		
		$data->directory = basename($dir);
		
		$data->img_path = '';
		$files = JFolder::files($dir, '\.jpg|\.gif|\.png');
		if (count($files))
		{
			$file = reset($files);
			$data->img_path = JURI::root().'components/com_rsform/assets/themes/'.$data->directory.'/'.$file;
		}
		
		$element = & $xml->document->name[0];
		$data->name = $element ? $element->data() : '';
		
		$element = & $xml->document->creationDate[0];
		$data->creationdate = $element ? $element->data() : JText::_('Unknown');
		
		$element = & $xml->document->author[0];
		$data->author = $element ? $element->data() : JText::_('Unknown');
		
		$element = & $xml->document->copyright[0];
		$data->copyright = $element ? $element->data() : '';
		
		$element = & $xml->document->authorEmail[0];
		$data->authorEmail = $element ? $element->data() : '';

		$element = & $xml->document->authorUrl[0];
		$data->authorUrl = $element ? $element->data() : '';

		$element = & $xml->document->version[0];
		$data->version = $element ? $element->data() : '';

		$element = & $xml->document->description[0];
		$data->description = $element ? $element->data() : '';
		
		if (isset($xml->document->css))
			for ($i=0; $i<count($xml->document->css); $i++)
			{
				$element = & $xml->document->css[$i];
				$data->css[$i] = $element ? $element->data() : '';
			}
		if (isset($xml->document->js))
			for ($i=0; $i<count($xml->document->js); $i++)
			{
				$element = & $xml->document->js[$i];
				$data->js[$i] = $element ? $element->data() : '';
			}
		
		return $data;
	}
	
	function save()
	{
		$mainframe =& JFactory::getApplication();
		
		$post = JRequest::get('post', JREQUEST_ALLOWRAW);
		$post['FormId'] = $post['formId'];
		
		$form =& JTable::getInstance('RSForm_Forms', 'Table');
		unset($form->Thankyou);
		unset($form->UserEmailText);
		unset($form->AdminEmailText);
		unset($form->ErrorMessage);
		
		$params = array();
		if (!empty($post['ThemeName']))
		{
			$stylesheets = @$post['ThemeCSS'][$post['ThemeName']];
			$javascripts = @$post['ThemeJS'][$post['ThemeName']];
			
			$params[] = 'name='.$post['ThemeName'];
			if (is_array($stylesheets))
			{
				$params[] = 'num_css='.count($stylesheets);
				foreach ($stylesheets as $i => $stylesheet)
					$params[] = 'css'.$i.'='.$stylesheet;
			}
			if (is_array($javascripts))
			{
				$params[] = 'num_js='.count($javascripts);
				foreach ($javascripts as $i => $javascript)
					$params[] = 'js'.$i.'='.$javascript;
			}
		}
		$form->ThemeParams = implode("\n", $params);
		
		if (!isset($post['FormLayoutAutogenerate']))
			$post['FormLayoutAutogenerate'] = 0;
		
		if (!$form->bind($post))
		{
			JError::raiseWarning(500, $form->getError());
			return false;
		}
		
		$this->saveFormTranslation($form, $this->getLang());
		
		if ($form->store())
		{
			// Trigger event
			$mainframe->triggerEvent('rsfp_onFormSave', array(&$form));
			return true;
		}
		else
		{
			JError::raiseWarning(500, $form->getError());
			return false;
		}
	}
	
	function saveFormTranslation(&$form, $lang)
	{
		if ($form->Lang == $lang) return true;
		
		$fields 	  = array('FormTitle', 'UserEmailFromName', 'UserEmailSubject', 'AdminEmailFromName', 'AdminEmailSubject', 'MetaDesc', 'MetaKeywords');
		$translations = RSFormProHelper::getTranslations('forms', $form->FormId, $lang, 'id');
		foreach ($fields as $field)
		{
			$query   = array();
			$query[] = "`form_id`='".$form->FormId."'";
			$query[] = "`lang_code`='".$this->_db->getEscaped($lang)."'";
			$query[] = "`reference`='forms'";
			$query[] = "`reference_id`='".$this->_db->getEscaped($field)."'";
			$query[] = "`value`='".$this->_db->getEscaped($form->$field)."'";
			
			if (!isset($translations[$field]))
			{
				$this->_db->setQuery("INSERT INTO #__rsform_translations SET ".implode(", ", $query));
				$this->_db->query();
			}
			else
			{
				$this->_db->setQuery("UPDATE #__rsform_translations SET ".implode(", ", $query)." WHERE id='".(int) $translations[$field]."'");
				$this->_db->query();
			}
			unset($form->$field);
		}
	}
	
	function saveFormRichtextTranslation($formId, $opener, $value, $lang)
	{
		$translations = RSFormProHelper::getTranslations('forms', $formId, $lang, 'id');
		
		$query   = array();
		$query[] = "`form_id`='".$formId."'";
		$query[] = "`lang_code`='".$this->_db->getEscaped($lang)."'";
		$query[] = "`reference`='forms'";
		$query[] = "`reference_id`='".$this->_db->getEscaped($opener)."'";
		$query[] = "`value`='".$this->_db->getEscaped($value)."'";
		
		if (!isset($translations[$opener]))
		{
			$this->_db->setQuery("INSERT INTO #__rsform_translations SET ".implode(", ", $query));
			$this->_db->query();
		}
		else
		{
			$this->_db->setQuery("UPDATE #__rsform_translations SET ".implode(", ", $query)." WHERE id='".(int) $translations[$opener]."'");
			$this->_db->query();
		}
	}
	
	function saveFormPropertyTranslation($formId, $componentId, &$params, $lang, $just_added)
	{
		$fields 	  = RSFormProHelper::getTranslatableProperties();
		$translations = RSFormProHelper::getTranslations('properties', $formId, $lang, 'id');
		
		foreach ($fields as $field)
		{
			if (!isset($params[$field])) continue;
			
			$reference_id = $componentId.".".$this->_db->getEscaped($field);
			
			$query   = array();
			$query[] = "`form_id`='".$formId."'";
			$query[] = "`lang_code`='".$this->_db->getEscaped($lang)."'";
			$query[] = "`reference`='properties'";
			$query[] = "`reference_id`='".$reference_id."'";
			$query[] = "`value`='".$params[$field]."'";
			
			if (!isset($translations[$reference_id]))
			{
				$this->_db->setQuery("INSERT INTO #__rsform_translations SET ".implode(", ", $query));
				$this->_db->query();
			}
			else
			{
				$this->_db->setQuery("UPDATE #__rsform_translations SET ".implode(", ", $query)." WHERE id='".(int) $translations[$reference_id]."'");
				$this->_db->query();
			}
			
			if (!$just_added)
				unset($params[$field]);
		}
	}
	
	function getLang()
	{
		$session =& JFactory::getSession();
		$lang 	 =& JFactory::getLanguage();
		
		if (empty($this->_form))
			$this->getForm();
		
		return $session->get('com_rsform.form.'.$this->_form->FormId.'.lang', !empty($this->_form->Lang) ? $this->_form->Lang : $lang->getDefault());
	}
	
	function getEmailLang($id = null)
	{
		$session =& JFactory::getSession();
		$lang 	 =& JFactory::getLanguage();
		$cid	 = JRequest::getInt('cid');
		if (!is_null($id)) $cid = $id;
		
		return $session->get('com_rsform.emails.'.$cid.'.lang', $lang->getDefault());
	}
	
	function getLanguages()
	{
		$lang 	   =& JFactory::getLanguage();
		$languages = $lang->getKnownLanguages(JPATH_SITE);
		
		$return = array();
		foreach ($languages as $tag => $properties)
			$return[] = JHTML::_('select.option', $tag, $properties['name']);
		
		return $return;
	}
	
	function getMappings()
	{
		if (empty($this->_mdata))
			$this->_mdata = $this->_getList($this->_mquery);
		
		return $this->_mdata;
	}
	
	function getMTotal()
	{
		if (empty($this->_mtotal))
			$this->_mtotal = $this->_getListCount($this->_mquery); 
		
		return $this->_mtotal;
	}
	
	function getMPagination()
	{
		jimport('joomla.html.pagination');
		
		$pagination	= new JPagination($this->getMTotal(), 1, 0);
		// hack to show the order up icon for the first item
		$pagination->limitstart = 1;
		return $pagination;
	}
	
	function getEmails()
	{
		$formId = JRequest::getInt('formId',0);
		$session =& JFactory::getSession();
		$lang =& JFactory::getLanguage();
		if (!$formId) return array();
		
		$emails = $this->_getList("SELECT `id`, `to`, `subject`, `formId` FROM `#__rsform_emails` WHERE `formId` = ".$formId." ");
		$translations = RSFormProHelper::getTranslations('emails', $formId, $session->get('com_rsform.form.'.$formId.'.lang', $lang->getDefault()));
		
		if (!empty($emails))
		{
			foreach ($emails as $id=> $email)
			{
				if (isset($translations[$email->id.'.subject']))
					$emails[$id]->subject = $translations[$email->id.'.subject'];
			}
		}
		
		return $emails;
	}
	
	function getEmail()
	{
		$row		=& JTable::getInstance('RSForm_Emails', 'Table');
		$session	=& JFactory::getSession();
		$lang		=& JFactory::getLanguage();
		$cid		= JRequest::getInt('cid');
		$formId		= JRequest::getInt('formId');
		
		$row->load($cid);
		if ($formId && !$row->id) $row->formId = $formId;
		
		$translations = RSFormProHelper::getTranslations('emails', $row->formId, $session->get('com_rsform.emails.'.$row->id.'.lang', $lang->getDefault()));
		
		if (isset($translations[$row->id.'.fromname']))
			$row->fromname = $translations[$row->id.'.fromname'];
		if (isset($translations[$row->id.'.subject']))
			$row->subject = $translations[$row->id.'.subject'];
		if (isset($translations[$row->id.'.message']))
			$row->message = $translations[$row->id.'.message'];
		
		return $row;
	}
	
	function saveemail()
	{
		$row	=& JTable::getInstance('RSForm_Emails', 'Table');
		$post 	= JRequest::get('post', JREQUEST_ALLOWRAW);
		if (!$row->bind($post))
		{
			JError::raiseWarning(500, $row->getError());
			return false;
		}
		
		$this->saveEmailsTranslation($row, $this->getEmailLang($row->id));
		
		if (!$row->store())
		{
			JError::raiseWarning(500, $row->getError());
			return false;
		}
		
		return $row;
	}
	
	function saveEmailsTranslation(&$email, $lang)
	{
		$jlang =& JFactory::getLanguage();
		if (!$email->id) return true;
		if ($lang == $jlang->getDefault()) return true;
		
		$fields 	  = array('fromname', 'subject', 'message');
		$translations = RSFormProHelper::getTranslations('emails', $email->formId, $lang, 'id');
		
		foreach ($fields as $field)
		{
			$reference_id = $email->id.".".$this->_db->getEscaped($field);
			
			$query   = array();
			$query[] = "`form_id`='".$email->formId."'";
			$query[] = "`lang_code`='".$this->_db->getEscaped($lang)."'";
			$query[] = "`reference`='emails'";
			$query[] = "`reference_id`='".$reference_id."'";
			$query[] = "`value`='".$this->_db->getEscaped($email->$field)."'";
			
			if (!isset($translations[$reference_id]))
			{
				$this->_db->setQuery("INSERT INTO #__rsform_translations SET ".implode(", ", $query));
				$this->_db->query();
			}
			else
			{
				$this->_db->setQuery("UPDATE #__rsform_translations SET ".implode(", ", $query)." WHERE id='".(int) $translations[$reference_id]."'");
				$this->_db->query();
			}
			unset($email->$field);
		}
	}
	
}
?>