<?php
/**
* @version 1.3.0
* @package RSform!Pro 1.3.0
* @copyright (C) 2007-2010 www.rsjoomla.com
* @license GPL, http://www.gnu.org/copyleft/gpl.html
*/

defined('_JEXEC') or die('Restricted access');

class plgContentRSForm extends JPlugin
{
	/**
	 * Constructor
	 *
	 * For php4 compatability we must not use the __constructor as a constructor for plugins
	 * because func_get_args ( void ) returns a copy of all passed arguments NOT references.
	 * This causes problems with cross-referencing necessary for the observer design pattern.
	 *
	 * @param object $subject The object to observe
	 * @param object $params  The object that holds the plugin parameters
	 * @since 1.5
	 */
	function plgContentRSForm( &$subject, $params )
	{
		parent::__construct( $subject, $params );
	}
	
	function canRun()
	{
		if (class_exists('RSFormProHelper')) return true;
		
		$helper = JPATH_ADMINISTRATOR.DS.'components'.DS.'com_rsform'.DS.'helpers'.DS.'rsform.php';
		if (file_exists($helper))
		{
			require_once($helper);
			return true;
		}
		
		return false;
	}
	
	function onPrepareContent(&$article, &$params, $limitstart=0)
	{
		global $mainframe;
		
		$option = JRequest::getVar('option');
		$task 	= JRequest::getVar('task');
		if ($option == 'com_content' && $task == 'edit')
			return true;
		
		if (strpos($article->text, '{rsform ') === false)
			return true;
		
		if (!$this->canRun()) return true;
		
		// expression to search for
		$pattern = '#\{rsform ([0-9]+)\}#i';
		if (preg_match_all($pattern, $article->text, $matches))
		{
			$lang = JFactory::getLanguage();
			$lang->load('com_rsform', JPATH_SITE);
			foreach ($matches[0] as $i => $match)
			{
				$formId = $matches[1][$i];
				$article->text = str_replace($matches[0][$i], RSFormProHelper::displayForm($formId), $article->text);
			}
		}
		
		return true;
	}
}
?>