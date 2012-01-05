<?php
/*
	JoomlaXTC ColorInput

	version 1.6
	
	Copyright (C) 2009,2010  Monev Software LLC.	All Rights Reserved.
	
	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.
	
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
	
	THIS LICENSE IS NOT EXTENSIVE TO ACCOMPANYING FILES UNLESS NOTED.

	See COPYRIGHT.php for more information.
	See LICENSE.php for more information.
	
	Monev Software LLC
	www.joomlaxtc.com
*/

if (!defined( '_JEXEC' )) die( 'Direct Access to this location is not allowed.' );

class JElementColorInput extends JElement {

	function fetchElement($name, $value, &$node, $control_name)
	{
		$live_site = JURI::base();
		$dirname = basename(dirname(dirname(__FILE__)));
		
		$output = "";
		$document 	=& JFactory::getDocument();

		$document->addStyleSheet($live_site."../modules/$dirname/elements/colorpicker.css");
		$document->addScript($live_site."../modules/$dirname/elements/jquery-1.3.2.min.js"); 
		$document->addScript($live_site."../modules/$dirname/elements/colorpicker.js");

		$output = "<input id=\"".$control_name.$name."\" name=\"".$control_name."[".$name."]\" type=\"text\" size=\"7\" maxlength=\"7\" value=\"".$value."\" onfocus=\"jQuery.noConflict();jQuery(this).ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			hex=hex.toUpperCase();
			jQuery(el).val(hex);
			jQuery(el).ColorPickerHide();
			document.getElementById('".$control_name.$name."COLORBOX').style.backgroundColor = '#'+hex;
		},
		onBeforeShow: function () {
			jQuery(this).ColorPickerSetColor(this.value);
		}
	})\"/>&nbsp;&nbsp;<span id=\"".$control_name.$name."COLORBOX\" style=\"cursor:default;border:1px solid silver;background-color:#$value\">&nbsp;&nbsp;&nbsp;&nbsp;</span>";
	return $output;
	}
}
?>