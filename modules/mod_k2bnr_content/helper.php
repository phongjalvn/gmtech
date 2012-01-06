<?php 
/**
 * @version		$Id: helper.php $
 * @package		K2
 * @author		BNR Branding Solutions, http://www.bnrbranding.com
 * @copyright	Copyright (C) 2010 BNR Branding Solutions. All rights reserved.
 * @license		GNU General Public License <http://www.gnu.org/copyleft/gpl.html>
 * @link		http://www.bnrbranding.com
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

require_once(JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'helpers'.DS.'route.php');
require_once(JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'helpers'.DS.'utilities.php');

class modK2BNRContentHelper {

  function getItems(&$params) {
  
    jimport('joomla.filesystem.file');
    $componentParams = &JComponentHelper::getParams('com_k2');
    $id = JRequest::getInt('id');
    $user = &JFactory::getUser();
    $aid = $user->get('aid');
    $db = &JFactory::getDBO();

	$query = "SELECT * FROM #__k2_items WHERE id={$id}";
	$db->setQuery($query, 0, 1);
    $item = $db->loadObject();
    
    require_once (JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'models'.DS.'item.php');
    require_once (JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'models'.DS.'itemlist.php');
    $model = new K2ModelItem;
    $model2 = new K2ModelItemlist;
    
        //Images
        if ($params->get('itemImage')) {
        
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_XS.jpg'))
            $item->imageXSmall = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_XS.jpg';
            
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_S.jpg'))
            $item->imageSmall = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_S.jpg';
            
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_M.jpg'))
            $item->imageMedium = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_M.jpg';
            
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_L.jpg'))
            $item->imageLarge = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_L.jpg';
            
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_XL.jpg'))
            $item->imageXLarge = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_XL.jpg';
            
          if (JFile::exists(JPATH_SITE.DS.'media'.DS.'k2'.DS.'items'.DS.'cache'.DS.md5("Image".$item->id).'_Generic.jpg'))
            $item->imageGeneric = JURI::root().'media/k2/items/cache/'.md5("Image".$item->id).'_Generic.jpg';
            
          $image = 'image'.$params->get('itemImgSize');
          if (isset($item->$image))
            $item->image = $item->$image;
            
        }
        
        //Read more link
        $item->link = urldecode(JRoute::_(K2HelperRoute::getItemRoute($item->id.':'.urlencode($item->alias), $item->catid.':'.urlencode($item->alias))));
        
        //Tags
        if ($params->get('itemTags')) {
          $tags = $model->getItemTags($item->id);
          for ($i = 0; $i < sizeof($tags); $i++) {
            $tags[$i]->link = JRoute::_(K2HelperRoute::getTagRoute($tags[$i]->name));
          }
          $item->tags = $tags;
        }
        
		//Related items
		if ($params->get('itemRelated') && isset($item->tags) && count($item->tags)) {
			$relatedItems = $model2->getRelatedItems($item->id, $item->tags, $params->get('itemRelatedLimit'));
			if (count($relatedItems)) {
				for ($i = 0; $i < sizeof($relatedItems); $i++) {
					$relatedItems[$i]->link = urldecode(JRoute::_(K2HelperRoute::getItemRoute($relatedItems[$i]->id.':'.urlencode($relatedItems[$i]->alias), $relatedItems[$i]->catid.':'.urlencode($relatedItems[$i]->categoryalias))));
				}
				$item->relatedItems = $relatedItems;
			}
		}
        
        //Category link
        if ($params->get('itemCategory'))
          $item->categoryLink = urldecode(JRoute::_(K2HelperRoute::getCategoryRoute($item->catid.':'.urlencode($item->alias))));
          
        //Extra fields
        if ($params->get('itemExtraFields')) {
          $item->extra_fields = $model->getItemExtraFields($item->extra_fields);
        }
        
        //Comments counter
        if ($params->get('itemCommentsCounter'))
          $item->numOfComments = $model->countItemComments($item->id);
          
        //Attachments
        if ($params->get('itemAttachments'))
          $item->attachments = $model->getItemAttachments($item->id);
          
        //Video
        if ($params->get('itemVideo')) {
          $dispatcher = &JDispatcher::getInstance();
          JPluginHelper::importPlugin('content', 'jw_allvideos');
          $params->set('vfolder', 'media/k2/videos');
          $item->text = $item->video;
          $dispatcher->trigger('onPrepareContent', array(&$item, $params, $limitstart));
          $item->video = $item->text;
        }
        
        // Introtext
        $item->text = '';
        if ($params->get('itemIntroText')) {
          // Word limit
          if ($params->get('itemIntroTextWordLimit')) {
            $item->text .= K2HelperUtilities::wordLimit($item->introtext, $params->get('itemIntroTextWordLimit'));
          } else {
            $item->text .= $item->introtext;
          }
        }
        
        //Plugins
		$limitstart = 0;
        $dispatcher = &JDispatcher::getInstance();
        JPluginHelper::importPlugin('content');
        
        $params->set('parsedInModule', 1); // for plugins to know when they are parsed inside this module
        
        $results = $dispatcher->trigger('onBeforeDisplay', array(&$item, &$params, &$limitstart));
        $item->event->BeforeDisplay = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onAfterDisplay', array(&$item, &$params, &$limitstart));
        $item->event->AfterDisplay = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onAfterDisplayTitle', array(&$item, &$params, &$limitstart));
        $item->event->AfterDisplayTitle = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onBeforeDisplayContent', array(&$item, &$params, &$limitstart));
        $item->event->BeforeDisplayContent = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onAfterDisplayContent', array(&$item, &$params, &$limitstart));
        $item->event->AfterDisplayContent = trim(implode("\n", $results));
        
        $dispatcher->trigger('onPrepareContent', array(&$item, &$params, &$limitstart));
        $item->introtext = $item->text;
        
        //K2 plugins
        $item->event->K2BeforeDisplay = '';
        $item->event->K2AfterDisplay = '';
        $item->event->K2AfterDisplayTitle = '';
        $item->event->K2BeforeDisplayContent = '';
        $item->event->K2AfterDisplayContent = '';
        
        JPluginHelper::importPlugin('k2');
        
        $results = $dispatcher->trigger('onK2BeforeDisplay', array(&$item, $params, $limitstart));
        $item->event->K2BeforeDisplay = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onK2AfterDisplay', array(&$item, $params, $limitstart));
        $item->event->K2AfterDisplay = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onK2AfterDisplayTitle', array(&$item, $params, $limitstart));
        $item->event->K2AfterDisplayTitle = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onK2BeforeDisplayContent', array(&$item, $params, $limitstart));
        $item->event->K2BeforeDisplayContent = trim(implode("\n", $results));
        
        $results = $dispatcher->trigger('onK2AfterDisplayContent', array(&$item, $params, $limitstart));
        $item->event->K2AfterDisplayContent = trim(implode("\n", $results));
        
        $dispatcher->trigger('onK2PrepareContent', array(&$item, $params, $limitstart));
        $item->introtext = $item->text;
        
        //Author
        if ($params->get('itemAuthor')) {
          if (! empty($item->created_by_alias)) {
            $item->author = $item->created_by_alias;
            $item->authorGender = NULL;
            if ($params->get('itemAuthorAvatar'))
              $item->authorAvatar = K2HelperUtilities::getAvatar('alias');
          } else {
            $author = &JFactory::getUser($item->created_by);
            $item->author = $author->name;
            $query = "SELECT `gender` FROM #__k2_users WHERE userID={$author->id}";
            $db->setQuery($query, 0, 1);
            $item->authorGender = $db->loadResult();
            if ($params->get('itemAuthorAvatar')) {
              $item->authorAvatar = K2HelperUtilities::getAvatar($author->id, $author->email, $componentParams->get('userImageWidth'));
            }
            //Author Link
            $item->authorLink = JRoute::_(K2HelperRoute::getUserRoute($item->created_by));
          }
        }
        
      return $item;
      
  }
  
}
