<?php
/**
 * @version 0.4.8
 * @package k2fields
 * @author Gobezu Sewu <info@jproven.com>
 * @copyright Copyright (c) 2010 jproven.com
 * @license GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined('_JEXEC') or die('Restricted access');
JLoader::register('K2Plugin',JPATH_ADMINISTRATOR.DS.'components'.DS.'com_k2'.DS.'lib'.DS.'k2plugin.php');

class plgk2k2fields extends K2Plugin {
    const USERADDED = 'useradded:';
    const FILTER_ADDED_BY_USER = 1;
    const FILTER_NOT_ADDED_BY_USER = 2;
    const LIST_CONDITION_SEPARATOR = '=:=:=';
    const LIST_ITEM_SEPARATOR = '-:-:-';
    const FIELD_OPTIONS_SEPARATOR = ':::';
    const FIELD_SEPARATOR = '---';
    const TABLE_COL_SEPARATOR = '|';
    const TABLE_ROW_SEPARATOR = "\r\n";
    private static $fields;
    
    function plgk2k2fields(&$subject, $params) {
        parent::__construct($subject, $params);
        JPlugin::loadLanguage('plg_k2_k2fields', JPATH_ADMINISTRATOR);
    }

    function onK2PrepareContent( & $item, & $params, $limitstart) {
    }

    /* Storage of value is done by using a proxy native k2 textarea field
     * field with "K2ExtraField_" so we don't even need to bog us down with onBeforeK2Save implementation
     *
     * Retrieval is a bit more difficult as we need to
     */
    function onRenderAdminForm( &$item, $type, $tab = '') {
        if ($type != 'item') return;
        
        static $jsDone;

        if ($tab == 'extra-fields' && !isset($jsDone)) {
            $document =& JFactory::getDocument();
            $document->addScript(JURI::root().'plugins/k2/k2fields/k2fields.js');
            $document->addScriptDeclaration('
                var k2fs = new k2fields({
                    nonsaveableValues: '.plgk2k2fields::getExtraFieldValuesNotAddedByUser().',
                    listItemSeparator: "'.plgk2k2fields::LIST_ITEM_SEPARATOR.'",
                    listConditionSeparator: "'.plgk2k2fields::LIST_CONDITION_SEPARATOR.'",
                    fieldOptionSeparator: "'.plgk2k2fields::FIELD_OPTIONS_SEPARATOR.'",
                    fieldSeparator: "'.plgk2k2fields::FIELD_SEPARATOR.'",
                    userAddedValuePrefix: "'.plgk2k2fields::USERADDED.'"
                    });
            ');
            
            $jsDone = true;
        } else {
            return;
        }
    }

    function onAfterK2Save(&$item, $isNew) {
        $item->extra_fields_search = JString::str_ireplace(plgk2k2fields::LIST_ITEM_SEPARATOR, ' ', $item->extra_fields_search);
        $item->extra_fields_search = JString::str_ireplace(plgk2k2fields::LIST_CONDITION_SEPARATOR, ' ', $item->extra_fields_search);
        
        if (!$item->store()) {
            $mainframe = &JFactory::getApplication();
            $mainframe->redirect('index.php?option=com_k2&view=items', $item->getError(), 'error');
        }

        plgk2k2fields::trimExtraFields($item);
    }

    // If we have editable select lists, save new values
    function onBeforeK2Save(&$item, $isNew) {
        $variables = JRequest::get('post');
        
        foreach ($variables as $key => $value) {
            if (plgk2k2fields::isK2Field($key)) {
                $field = plgk2k2fields::getK2Field($key);

                if (plgk2k2fields::isSelectList($field)) {
                    if (!plgk2k2fields::isPrefixed($value, plgk2k2fields::USERADDED)) continue;

                    $valueToSave = JString::substr($value, JString::strlen(plgk2k2fields::USERADDED));

                    if ($valueToSave == '') continue;

                    $valueFound = false;
                    $isSaveNewValue = plgk2k2fields::issave($field);
                    $existingValues = $isSaveNewValue ? $field->value : plgk2k2fields::getExtraFieldValuesAddedByUser(false);

                    foreach ($existingValues as $existingValue){
                        if (JString::strtolower(JString::trim($existingValue->value)) == JString::strtolower(JString::trim($valueToSave))) {
                            $valueFound = true;
                            break;
                        }
                    }

                    if (!$valueFound) {
                        if (!$isSaveNewValue) {
                            $existingValues = $field->value;
                        }

                        $object = new JObject;

                        $object->set('name', ($isSaveNewValue ? '' : plgk2k2fields::USERADDED).$valueToSave);
                        $valueToSave = sizeof($existingValues)+1;
                        JRequest::setVar($key, $valueToSave);
                        $object->set('value', $valueToSave);
                        $object->set('target', null);
                        unset($object->_errors);
                        $existingValues[] = $object;

                        plgk2k2fields::saveFieldValue($field->id, $existingValues);
                    }
                }
            }
        }
    }

    static function saveFieldValue($fieldId, $values) {
        require_once(JPATH_COMPONENT_ADMINISTRATOR.DS.'models'.DS.'extrafield.php');
        require_once(JPATH_COMPONENT_ADMINISTRATOR.DS.'lib'.DS.'JSON.php');

        $extraFieldModel = new K2ModelExtraField;
        $json = new Services_JSON;
        
        $saveId = JRequest::getVar('cid');

        JRequest::setVar('cid', $fieldId);

        $field = $extraFieldModel->getData();

        JRequest::setVar('cid', $saveId);

        $field->value = $json->encode($values);
        $mainframe = &JFactory::getApplication();

        if (!$field->check()) {
            $mainframe->redirect('index.php?option=com_k2&view=item&cid='.$item->id, $row->getError(), 'error');
        }

        if (!$field->store()) {
            $mainframe->redirect('index.php?option=com_k2&view=items', $item->getError(), 'error');
        }
    }


    static function isSelectList($field) {
        $field = plgk2k2fields::getK2Field($field);
        
        return $field->type == 'select' || $field->type == 'multipleselect';
    }

    static function getK2FieldId($field) {
        if (is_object($field)) {
            $field = $field->id;
        } else {
            if (preg_match("/^K2ExtraField_(\d+)$/", $field, $m)) {
                $field = $m[1];
            } else if (!is_numeric($field)) {
                return false;
            }
        }

        return $field;
    }

    static function getK2Field($field) {
        $id = plgk2k2fields::getK2FieldId($field);

        if ($id === false) return false;
        
        $fields = plgk2k2fields::getExtraFields();

        return $fields[$id];
    }

    static function isPrefixed($value, $prefix) {
        return JString::strpos(JString::strtolower($value), JString::strtolower($prefix)) === 0;
    }

    static function isK2Field($field) {
        $field = plgk2k2fields::getK2Field($field);

        if ($field === false) return false;

        return plgk2k2fields::isPrefixed($field->name, "k2f".plgk2k2fields::FIELD_SEPARATOR);
    }

    static function isSave($field) {
        if (!plgk2k2fields::isSelectList($field) || !plgk2k2fields::isK2Field($field)) return false;
        
        list(,$options,) = explode(plgk2k2fields::FIELD_SEPARATOR, $field->name);
        $options = explode(plgk2k2fields::FIELD_OPTIONS_SEPARATOR, $options);

        foreach ($options as $option) {
            $opt = explode("=", $option);
            
            if ($opt[0] == 'save') {
                return (bool) $opt[1];
            }
        }
        
        return false;
    }

    static function trimExtraFields($item) {
        $nonSaveableFields = plgk2k2fields::getUserAddedExtraFieldValues(null, false);

        $query = "SELECT extra_fields FROM #__k2_items WHERE id = ".$item->id;
        $db = JFactory::getDBO();
        $db->setQuery($query);
        
        require_once(JPATH_COMPONENT_ADMINISTRATOR.DS.'lib'.DS.'JSON.php');
        $json = new Services_JSON;

        $values = $json->decode($db->loadResult());

	    foreach ($values as $value) {
		$exists = isset($nonSaveableFields[$value->id])
		       && !is_object($value->value) // need to check how multiple select saves values
		       && isset($nonSaveableFields[$value->id][$value->value]);

		if ($exists) {
		    unset($nonSaveableFields[$value->id][$value->value]);
		}
	    }

        foreach ($nonSaveableFields as $v => $values) {
            if (sizeof($values) == 0) {
                unset($nonSaveableFields[$v]);
            }
        }
        
        foreach ($nonSaveableFields as $fieldId => $values) {
            $field = plgk2k2fields::getK2Field($fieldId);
            
            foreach ($values as $value) {
                foreach ($field->value as $v => $_value) {
                    if ($_value->value == $value) {
                        unset($field->value[$v]);
                    }
                }
            }

            plgk2k2fields::saveFieldValue($fieldId, $field->value);
        }
    }

	static function getExtraFields(){
        if (isset(plgk2k2fields::$fields)) {
            return plgk2k2fields::$fields;
        }
        
		$db = & JFactory::getDBO();
		$query = "SELECT id, name, value, type FROM #__k2_extra_fields";
		$db->setQuery($query);
		$rows = $db->loadObjectList('id');

        require_once(JPATH_ROOT.'/administrator/components/com_k2/lib/JSON.php');
        $json = new Services_JSON;

        foreach ($rows as $row) {
            if ($row->type == 'select' || $row->type == 'multipleSelect') {
                $row->value = $json->decode($row->value);
            }
        }
        
        plgk2k2fields::$fields = $rows;

		return $rows;
	}

    static function getExtraFieldValuesAddedByUser($jsonEncoded = true) {
        return plgk2k2fields::getUserAddedExtraFieldValues(plgk2k2fields::FILTER_ADDED_BY_USER, $jsonEncoded);
    }

    static function getExtraFieldValuesNotAddedByUser($jsonEncoded = true) {
        return plgk2k2fields::getUserAddedExtraFieldValues(plgk2k2fields::FILTER_NOT_ADDED_BY_USER, $jsonEncoded);
    }

    static function getUserAddedExtraFieldValues($filter = null, $jsonEncoded = true) {
        // Collect all non-savable values
        $fields = plgk2k2fields::getExtraFields();
        $nonSaveableFields = array();

        foreach ($fields as $field) {
            if (!plgk2k2fields::isSave($field) && plgk2k2fields::isSelectList($field)) {
                $values = $field->value;
                $userAddedValues = array();

                foreach ($values as $value) {
                    if (( bool )JString::stristr($value->name, plgk2k2fields::USERADDED)) {
                        $userAddedValues[$value->value] = $value->value;
                    }
                }

                if (sizeof($userAddedValues)) {
                    $nonSaveableFields[$field->id] = $userAddedValues;
                }
            }
        }

        require_once(JPATH_ROOT.'/administrator/components/com_k2/lib/JSON.php');
        $json = new Services_JSON;

        if ($filter) {
            $user = & JFactory::getUser();
            $userId = $user->get ('id');
            $db = & JFactory::getDBO();
            $query = "SELECT extra_fields FROM #__k2_items WHERE created_by = {$userId} OR modified_by = {$userId}";
            $db->setQuery($query);
            $rows = $db->loadObjectList();

            foreach ($rows as $row) {
                $values = $json->decode($row->extra_fields);

                if (!is_array($values)) continue;
                
                foreach ($values as $value) {
                    $exists = isset($nonSaveableFields[$value->id])
                           && !is_object($value->value) // need to check how multiple select saves values
                           && isset($nonSaveableFields[$value->id][$value->value]);

                    if ($filter == plgk2k2fields::FILTER_NOT_ADDED_BY_USER && $exists
                     || $filter == plgk2k2fields::FILTER_ADDED_BY_USER && !$exists) {
                        unset($nonSaveableFields[$value->id][$value->value]);
                    }
                }
            }

            foreach ($nonSaveableFields as $n => $nonSaveableField) {
                if (sizeof($nonSaveableField) == 0) {
                    unset($nonSaveableFields[$n]);
                }
            }
        }

        return $jsonEncoded ? $json->encode($nonSaveableFields) : $nonSaveableFields;
    }

	function onK2BeforeDisplay( & $item, & $params, $limitstart) {
        $view = JRequest::getWord('view');
                $p = is_object($item->params) ? $item->params : $params;
                
                if (!is_object($p) || empty($item->extra_fields) || !is_array($item->extra_fields) || count($item->extra_fields) <= 0) {
                        return;
                }
                
                if (!($view == 'itemlist' && ($p->get('catItemExtraFields') || $p->get('itemExtraFields'))
                        || $view == 'item' && $p->get('itemExtraFields'))
                        )
                        return;

        foreach ($item->extra_fields as $f => $field) {
            if (plgk2k2fields::isK2Field($field)) {
                $isSave = plgk2k2fields::isSave($field);
                list(,$options,$name) = explode(plgk2k2fields::FIELD_SEPARATOR, $field->name);
                $item->extra_fields[$f]->name = $name;

                if (plgk2k2fields::isSelectList($field)) {
                    if (is_string($field->value)) {
                        $item->extra_fields[$f]->value = str_replace(plgk2k2fields::USERADDED, '', $field->value);
                    }
                } else {
                    $options = explode(plgk2k2fields::FIELD_OPTIONS_SEPARATOR, $options);
                    
                    if (!plgk2k2fields::isAccessible($options)) {
                        $item->extra_fields[$f]->value = JText::_('Access restricted');
                        continue;
                    }

                    $isMap = plgk2k2fields::isType($options, 'map');
                    $isTable = plgk2k2fields::isType($options, 'table');

                    $_items = explode(plgk2k2fields::LIST_ITEM_SEPARATOR, $field->value);
                    $ui = '';

                    foreach ($_items as $i => $_item) {
                            if (!empty($_item)) {
                        list($val, $cond) = explode(plgk2k2fields::LIST_CONDITION_SEPARATOR, $_item);
                            } else {
                                    $val = $cond = '';
                            }

                        if ($isMap) {
                            if (!JPluginHelper::isEnabled('content', 'plugin_googlemap2') && !JPluginHelper::isEnabled('system', 'plugin_googlemap2')) {
                                JError::raiseWarning(403, JText::_('The required map plugin is not available.'));
                                continue;
                            }

                            $dispatcher = &JDispatcher::getInstance();

                            $_item = new stdClass();

                            $val = explode(',', $val);

                            if ($view!='item'){
                                $component = JComponentHelper::getComponent( 'com_k2' );
                                $plgparams = new JParameter( $component->params );
                            } else {
                                $plgparams = & JComponentHelper::getParams('com_k2');
                            }

                            $gmapPlg =& JPluginHelper::getPlugin(JPluginHelper::isEnabled('content', 'plugin_googlemap2') ? 'content' : 'system', 'plugin_googlemap2');
                            $gmapPlgParams = new JParameter( $gmapPlg->params );

                            $_item->text = "{".$gmapPlgParams->get('plugincode')." ".'lat='.$val[0] . '|lon='.$val[1].(isset($val[2]) ? '|tooltip='.$val[2]:'').(isset($val[3]) ? '|text=' .$val[3] : '')."}";
                            $dispatcher->trigger ( 'onPrepareContent', array (&$_item, &$plgparams, 0 ) );

                            $val = $_item->text;
                        } else if ($isTable && $val) {
                            
                            $sep = plgk2k2fields::getK2FieldOptionValue($options, 'rsep') ? plgk2k2fields::getK2FieldOptionValue($options, 'rsep') : plgk2k2fields::TABLE_ROW_SEPARATOR;
                            $rows = explode($sep, $val);
                            $hasHeader = plgk2k2fields::getK2FieldOptionValue($options, 'header');
                            $sep = plgk2k2fields::getK2FieldOptionValue($options, 'csep') ? plgk2k2fields::getK2FieldOptionValue($options, 'csep') : plgk2k2fields::TABLE_COL_SEPARATOR;
                            
                            $val = '<table>';

                            if ($hasHeader) {
                                $row = array_shift($rows);
                                $val .= '<tr><th>'.JString::str_ireplace($sep, '</th><th>', $row) . '</td></tr>';
                            }
                            
                            foreach ($rows as $row) {
                                $val .= '<tr><td>'.JString::str_ireplace($sep, '</td><td>', $row) . '</td></tr>';
                            }

                            $val .= '</table>';
                        }

                        $ui .= '<li class="'.($i%2 ? 'even' : 'odd').'"><span class="cond">' . $cond . '</span><span class="value">' . $val . '</span></li>';
                    }

                    if ($ui) {
                        $ui = '<ul class="k2f k2f'.plgk2k2fields::getK2FieldOptionValue($options, 'valid').' k2f'.$field->id.'">'.$ui.'</ul>';

                        $item->extra_fields[$f]->value = $ui;
                    }
                }
            }
        }
	}

    function isAccessible($options) {
        $isRestricted = plgk2k2fields::getK2FieldOptionValue($options, 'restricted');
        
        if ($isRestricted) {
            $user = &JFactory::getUser();

            if (!$user->id) return false;

            return true;
        } else {
            return true;
        }
    }

    function isType($options, $type) {
        $valid = plgk2k2fields::getK2FieldOptionValue($options, 'valid');
        
        return $valid == $type;
    }

    function getK2FieldOptionValue($options, $optionName) {
        foreach ($options as $option) {
            $option = explode('=', $option);
            
            if ($option[0] == $optionName) return $option[1];
        }

        return '';
    }

	function onK2AfterDisplayTitle( & $item, & $params, $limitstart) {
	}

	function onK2BeforeDisplayContent( & $item, & $params, $limitstart) {
	}

	function onK2AfterDisplayContent( & $item, & $params, $limitstart) {
	}

	function onK2CategoryDisplay( & $category, & $params, $limitstart) {
	}

	function onK2UserDisplay( & $user, & $params, $limitstart) {
	}
}