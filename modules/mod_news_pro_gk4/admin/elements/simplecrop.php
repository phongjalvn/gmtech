<?php

/**
* JElementK2MultiCategories - additional element for module XML file
* @package News Show Pro GK4
* @Copyright (C) 2009-2010 Gavick.com
* @ All rights reserved
* @ Joomla! is Free Software
* @ Released under GNU/GPL License : http://www.gnu.org/copyleft/gpl.html
* @version $Revision: 4.0.0 $
**/
 
// access denied
defined('JPATH_BASE') or die();
 
class JElementSimpleCrop extends JElement
{
	// name of element
	var $_name = 'SimpleCrop';
	// function to create an element
	function fetchElement($name, $value, &$node, $control_name) {
        // render the element
		return '<div id="simple_crop">
			<div>
				<div id="simple_crop_top_wrap"><input type="text" id="simple_crop_top" value="0" />%</div>
				<div id="simple_crop_main_wrap">
					<div id="simple_crop_left_wrap"><input type="text" id="simple_crop_left" value="0" />%</div>
					<div id="simple_crop_bg">
						<div id="simple_crop_crop"></div>
					</div>
					<div id="simple_crop_right_wrap"><input type="text" id="simple_crop_right" value="0" />%</div>	
				</div>
				<div id="simple_crop_bottom_wrap"><input type="text" id="simple_crop_bottom" value="0" />%</div>
			</div>
		</div>';	 
	}
}