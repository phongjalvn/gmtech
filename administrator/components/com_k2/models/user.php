<?php
/**
 * @version		$Id: user.php 1109 2011-10-10 17:42:58Z lefteris.kavadas $
 * @package		K2
 * @author		JoomlaWorks http://www.joomlaworks.gr
 * @copyright	Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.model');

JTable::addIncludePath(JPATH_COMPONENT.DS.'tables');

class K2ModelUser extends JModel
{

    function getData() {
        $cid = JRequest::getInt('cid');
        $db = &JFactory::getDBO();
        $query = "SELECT * FROM #__k2_users WHERE userID = ".$cid;
        $db->setQuery($query);
        $row = $db->loadObject();
        if(!$row) {
	        $row = & JTable::getInstance('K2User', 'Table');
        }
        return $row;
    }

    function save() {

        $mainframe = &JFactory::getApplication();
        jimport('joomla.filesystem.file');
        require_once (JPATH_COMPONENT.DS.'lib'.DS.'class.upload.php');
        $row = & JTable::getInstance('K2User', 'Table');
        $params = & JComponentHelper::getParams('com_k2');

        if (!$row->bind(JRequest::get('post'))) {
            $mainframe->redirect('index.php?option=com_k2&view=users', $row->getError(), 'error');
        }

        $row->description = JRequest::getVar('description', '', 'post', 'string', 2);
        if($params->get('xssFiltering')){
            $filter = new JFilterInput(array(), array(), 1, 1, 0);
            $row->description = $filter->clean( $row->description );
        }
        $jUser = &JFactory::getUser($row->userID);
        $row->userName = $jUser->name;

        if (!$row->store()) {
            $mainframe->redirect('index.php?option=com_k2&view=users', $row->getError(), 'error');
        }

        
    	//Image
		if((int)$params->get('imageMemoryLimit')) {
			ini_set('memory_limit', (int)$params->get('imageMemoryLimit').'M');
		}
        
        $file = JRequest::get('files');

        $savepath = JPATH_ROOT.DS.'media'.DS.'k2'.DS.'users'.DS;

        if ($file['image']['error'] == 0 && !JRequest::getBool('del_image')) {
            $handle = new Upload($file['image']);
            if ($handle->uploaded) {
                $handle->file_auto_rename = false;
                $handle->file_overwrite = true;
                $handle->file_new_name_body = $row->id;
                $handle->image_resize = true;
                $handle->image_ratio_y = true;
                $handle->image_x = $params->get('userImageWidth', '100');
                $handle->Process($savepath);
                $handle->Clean();
            }
            else {
                $mainframe->redirect('index.php?option=com_k2&view=users', $handle->error, 'error');
            }
            $row->image = $handle->file_dst_name;
        }

        if (JRequest::getBool('del_image')) {

            $current = & JTable::getInstance('K2User', 'Table');
            $current->load($row->id);
            if (JFile::exists(JPATH_ROOT.DS.'media'.DS.'k2'.DS.'users'.DS.$current->image)) {
                JFile::delete(JPATH_ROOT.DS.'media'.DS.'k2'.DS.'users'.DS.$current->image);
            }
            $row->image = '';
        }

        if (!$row->check()) {
            $mainframe->redirect('index.php?option=com_k2&view=user&cid='.$row->id, $row->getError(), 'error');
        }

        if (!$row->store()) {
            $mainframe->redirect('index.php?option=com_k2&view=users', $row->getError(), 'error');
        }

        $cache = & JFactory::getCache('com_k2');
        $cache->clean();

        switch(JRequest::getCmd('task')) {
            case 'apply':
                $msg = JText::_('K2_CHANGES_TO_USER_SAVED');
                $link = 'index.php?option=com_k2&view=user&cid='.$row->userID;
                break;
            case 'save':
            default:
                $msg = JText::_('K2_USER_SAVED');
                $link = 'index.php?option=com_k2&view=users';
                break;
        }
        $mainframe->redirect($link, $msg);
    }

    function getUserGroups(){

        $db = & JFactory::getDBO();
        $query = "SELECT * FROM #__k2_user_groups";
        $db->setQuery($query);
        $rows = $db->loadObjectList();
        return $rows;
    }

}
