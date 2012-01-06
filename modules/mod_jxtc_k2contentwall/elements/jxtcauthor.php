<?php
/*
	JoomlaXTC K2 Content Wall

	version 1.11.2

	Copyright (C) 2008,2009,2010,2011 Monev Software LLC.	All Rights Reserved.

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

defined( '_JEXEC' ) or die;


class JElementJxtcauthor extends JElement {
	var	$_name = 'Jxtcauthor';
	function fetchElement($jxtcname, $jxtcvalue, &$jxtcnode, $jxtccontrol_name)	{
		$jxtccat=array();$jxtcref=array();$jxtcoptions=array();
		$db	=& JFactory::getDBO();
		$q = "SELECT DISTINCT u.id, concat(u.username,' (',u.id,')') as username FROM #__users AS u, #__k2_items AS i WHERE u.id = i.created_by ORDER BY u.username";
		$db->setquery($q);
		$result=$db->loadObjectList();
		array_unshift($result,(object)array('id'=>0,'username'=>'ANY AUTHOR'));
		$size = count($result);
		$size = ceil($size/10);
		if ($size < 5) $size = 5;
		if ($size > 20) $size = 20;
		return JHTML::_('select.genericlist',  $result, $jxtccontrol_name.'['.$jxtcname.'][]', ' MULTIPLE size="'.$size.'" class="inputbox"', 'id', 'username', $jxtcvalue, $jxtccontrol_name.$jxtcname);
	}
}