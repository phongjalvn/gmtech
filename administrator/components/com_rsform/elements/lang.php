<?php
/**
* @version 1.4.0
* @package RSform!Pro 1.4.0
* @copyright (C) 2007-2011 www.rsjoomla.com
* @license GPL, http://www.gnu.org/copyleft/gpl.html
*/

defined('_JEXEC') or die('Restricted access');
JHTML::_('behavior.tooltip');

class JElementLang extends JElement
{
	/**
	* Element name
	*
	* @access       protected
	* @var          string
	*/
	var $_name = 'Lang';

	function fetchElement($name, $value, &$node, $control_name)
	{
		// Base name of the HTML control.
		$ctrl  = $control_name .'['. $name .']';

		// Construct the various argument calls that are supported.
		$attribs = ' ';
		if ($v = $node->attributes( 'size' ))
			$attribs .= 'size="'.$v.'"';
		if ($v = $node->attributes('class'))
			$attribs .= 'class="'.$v.'"';
		else
			$attribs .= 'class="inputbox"';
		
		$lang 	   =& JFactory::getLanguage();
		$lang->load('com_rsform');
		$languages = $lang->getKnownLanguages(JPATH_SITE);
		$options   = array();
		$options[] = JHTML::_('select.option', '', JText::_('RSFP_SUBMISSIONS_ALL_LANGUAGES'));
		foreach ($languages as $language => $properties)
			$options[] = JHTML::_('select.option', $language, $properties['name']);

		// Render the HTML SELECT list.
		$return = JHTML::_('select.genericlist', $options, $ctrl, $attribs, 'value', 'text', $value, $control_name.$name);
		
		return $return;
	}
}
?>