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


if (!defined( '_JEXEC' )) die( 'Direct Access to this location is not allowed.' );

//Core calls
$live_site = JURI::base();
$doc =&JFactory::getDocument();
$contentconfig = &JComponentHelper::getParams( 'com_content' );
$moduleDir = 'mod_jxtc_k2contentwall';
$db =&JFactory::getDBO();

// Include the syndicate functions only once
jimport('joomla.filesystem.folder');
jimport('joomla.filesystem.file');
require_once 'helper.php' ;
require_once JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'helpers'.DS.'route.php';

//Core Vars
$envcatid = JRequest::getInt('catid');
$envid = JRequest::getInt('id');
$envview = JRequest::getVar('view');
$nullDate	= $db->getNullDate();
$date =&JFactory::getDate();
$now = $date->toMySQL();


//Parameters
$cattwetttext = $params->get('cattwittext', 'Like this? Tweet it to your followers!');
$twetttext = $params->get('twittext', 'Like this? Tweet it to your followers!');
$related = $params->get('related', 1);
$numvotes = $params->get('numvotes', 0);
$catid = $params->get('category_id');
$childen = $params->get('getChildren');
$usecurrentcat = $params->get('usecurrentcat',1);
$compat = $params->get('compat');
$comcompat = $params->get('comcompat');
$authorid = (array) $params->get( 'authorid', 0 );
$group	= $params->get('group', 0);
$sortfield = $params->get('sortfield', 0);
$sortorder = $params->get('sortorder', 1);
$featured = $params->get('featured', 1);

$template	= $params->get('template','');
$moduletemplate = trim( $params->get('modulehtml','{mainarea}'));
$itemtemplate = trim( $params->get('html','{intro}'));
$columns = $params->get('columns',1);
$rows	= $params->get('rows', 1);
$pages = $params->get('pages', 1);

$mainmaxtitle	= $params->get('maxtitle', '');
$mainmaxtitlesuf	= $params->get('maxtitlesuf', '...');
$mainmaxintro	= $params->get('maxintro', '');
$mainmaxintrosuf	= $params->get('maxintrosuf', '...');
$mainmaxtext	= $params->get('maxtext', '');
$mainmaxtextsuf	= $params->get('maxtextsuf', '...');
$maintextbrk	= $params->get('textbrk', '');
$dateformat	= trim( $params->get('dateformat','Y-m-d' ));
$morepos = $params->get('morepos', 'b');
$moreqty = $params->get('moreqty', 0);
$morecols	= trim( $params->get('morecols',1));
$morelegend	= trim($params->get('moretext', ''));
$morelegendcolor	= $params->get('morergb','cccccc');
$moretemplate	= $params->get('morehtml', '{title}');
$moremaxtitle	= trim( $params->get('moretitle'));
$moremaxtitlesuf	= $params->get('moretitlesuf','...');
$moremaxintro	= trim( $params->get('moreintro'));
$moremaxintrosuf	= $params->get('moreintrosuf','...');
$moremaxtext	= trim( $params->get('moremaxtext'));
$moremaxtextsuf	= $params->get('moremaxtextsuf','...');
$moretextbrk	= $params->get('moretextbrk', '');
if ($template && $template != -1) {
    $moduletemplate=file_get_contents(JPATH_ROOT.DS.'modules'.DS.'mod_jxtc_k2contentwall'.DS.'templates'.DS.$template.DS.'module.html');
    $itemtemplate=file_get_contents(JPATH_ROOT.DS.'modules'.DS.'mod_jxtc_k2contentwall'.DS.'templates'.DS.$template.DS.'element.html');
    $moretemplate=file_get_contents(JPATH_ROOT.DS.'modules'.DS.'mod_jxtc_k2contentwall'.DS.'templates'.DS.$template.DS.'more.html');

    if (file_exists(JPATH_ROOT.DS.'modules'.DS.'mod_jxtc_k2contentwall'.DS.'templates'.DS.$template.DS.'template.css')) {
        $doc->addStyleSheet($live_site.'modules/mod_jxtc_k2contentwall/templates/'.$template.'/template.css','text/css');
    }
}

// Build Query

if ($usecurrentcat == 1) {
    if ($envview == 'category' && $envid > 0) {
        $catid = $envid;
    }
    elseif (!empty($envcatid)) {
        $catid = $envcatid;
    }
}

$mainqty = $columns*$rows*$pages;
$varaux = $mainqty + $moreqty;

if(!is_array($catid)){$catid = array($catid);}

if($catid[0] != 0){
    if($childen){
        require_once (JPATH_SITE.DS.'components'.DS.'com_k2'.DS.'models'.DS.'itemlist.php');
        $child = array();
        foreach ($catid as $id) {
            $aux = K2ModelItemlist::getCategoryChilds($id, true);
            $aux[] = $id;
            $aux = array_unique($aux);
            $child = array_merge($child, $aux);
        }
        $catid = array_unique($child);
    }
}

$items = mod_jxtc_k2contentwallHelper::getData( $catid, $authorid, $group, $varaux, $sortfield, $sortorder, $featured);

if (count($items) == 0) return;// Return if empty

$mainarticles = array_slice($items,0,$mainqty);
$morearticles = array_slice($items,$mainqty);

// Build Main Area

$rowmaxintro = $mainmaxintro;
$rowmaxintrosuf = $mainmaxintrosuf;
$rowmaxtitle = $mainmaxtitle;
$rowmaxtitlesuf = $mainmaxtitlesuf;
$rowmaxtext = $mainmaxtext;
$rowmaxtextsuf = $mainmaxtextsuf;
$rowtextbrk = $maintextbrk;

require 'incl_render.php';

// Build More Area

$moreareahtml='';
if (count($items) > 0) {

	$rowmaxintro = $moremaxintro;
	$rowmaxtitle = $moremaxtitle;
	$rowmaxtext = $moremaxtext;
	$rowmaxintrosuf = $moremaxintrosuf;
	$rowmaxtitlesuf = $moremaxtitlesuf;
	$rowmaxtextsuf = $moremaxtextsuf;
	$rowtextbrk = $moretextbrk;
	if ($morelegend) {
		$moreareahtml .= '<a style="color:#'.$morelegendcolor.'">'.$morelegend.'</a><br/>';
	}
	$moreareahtml .= '<table class="jnp_more" border="0" cellpadding="0" cellspacing="0">';

	$c=1;
	foreach ( $items as $item ) {
		if ($c==1) {
			$moreareahtml .= '<tr>';
		}
		$itemhtml = $moretemplate;
		require 'func_parserow.php';
		$moreareahtml .= '<td>'.$itemhtml.'</td>';
		$c++;
		if ($c > $morecols) {
			$moreareahtml .= '</tr>';
			$c=1;
		}
	}
	if ($c > 1) $moreareahtml .= '</tr>';
	$moreareahtml .= '</table>';
}

$modulehtml = str_replace( '{morearea}', $moreareahtml, $modulehtml );

$contentparams =& $mainframe->getParams('com_content');
JPluginHelper::importPlugin('content');
$dispatcher =& JDispatcher::getInstance();
$item = new stdClass();
$item->text = $modulehtml;
$results = $dispatcher->trigger('onPrepareContent', array (&$item, &$contentparams, 0 ));
$modulehtml = $item->text;

echo '<div id="'.$jxtc.'">'.$modulehtml.'</div>';
?>
<div style="clear:both"></div>
<div style="display:none"><a href="http://www.joomlaxtc.com">JoomlaXTC K2 Content Wall - Copyright 2010 Monev Software LLC</a></div>
