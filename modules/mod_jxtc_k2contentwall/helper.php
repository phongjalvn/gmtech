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


class mod_jxtc_k2contentwallHelper
{
    /**
     * Retrieves the hello message
     *
     * @access public
     */
    function getData( $catid, $authorid, $group, $varaux, $sortfield, $sortorder, $featured )
    {
        $user =&JFactory::getUser();
        $date =&JFactory::getDate();
        $db =&JFactory::getDBO();
        $now = $date->toMySQL();
        $nullDate = $db->getNullDate();
        $contentconfig = &JComponentHelper::getParams( 'com_content' );
        $accesslevel = !$contentconfig->get('show_noauth');

        $aid = $user->get('aid', 0);

        $query = 'SELECT i.id, i.video, i.gallery, i.access, i.introtext, i.fulltext, i.title,
            UNIX_TIMESTAMP(i.created) as created, UNIX_TIMESTAMP(i.modified)
            as modified, i.catid, i.extra_fields, i.created_by, i.hits, i.params, cc.params as cat_params, cc.name as cat_title,
            cc.image as cat_image, u.username as author, CASE WHEN CHAR_LENGTH(i.alias)
            THEN CONCAT_WS(":", i.id, i.alias) ELSE i.id END as slug, CASE WHEN CHAR_LENGTH(cc.alias)
            THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug, kr.rating_sum , kr.rating_count, kr.lastip
            FROM #__k2_items AS i LEFT JOIN #__k2_rating AS kr ON kr.itemID = i.id,
            #__k2_categories AS cc, #__users AS u WHERE cc.id = i.catid
            AND u.id = i.created_by AND i.published = 1 AND i.trash = 0 AND cc.published = 1 AND cc.trash = 0
            AND ( i.publish_up = '.$db->Quote($nullDate).' OR i.publish_up <= '.$db->Quote($now).' )
            AND ( i.publish_down = '.$db->Quote($nullDate).' OR i.publish_down >= '.$db->Quote($now).' )';

        if ($accesslevel) {
            $query .= ' AND i.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid;
        }

        if ($catid) {
            if(is_array($catid)){
                if($catid[0] != 0)
                    $query .= " AND i.catid IN(".implode(',', $catid).")";
            }
            else{
                $query .= ' AND (i.catid='.$catid.')';
            }
        }

        if ($authorid[0] != 0) {
            $query .= ' AND i.created_by in ('.join(',',$authorid).')';
        }

        if ($group == 1) {
            $query .= ' GROUP BY i.created_by';
        }

        switch ($featured) {
            case 0: // Do not include
                    $query .= ' AND i.featured = 0 ';
            break;
            case 1:	// Include if present
            break;
            case 2:	// Only featured
                    $query .= ' AND i.featured = 1 ';
            break;
        }

        $aux = ($sortorder == '0') ? ' ASC ' : ' DESC ';

        switch ($sortfield) {
            case '0': // creation
                $query .= ' ORDER BY i.created'.$aux;
            break;
            case '1': // modified
                $query .= ' ORDER BY i.modified'.$aux;
            break;
            case '2': // hits
                $query .= ' ORDER BY i.hits'.$aux;
            break;
            case '3': // hits
                $query .= ' ORDER BY i.title'.$aux;
            break;
            case '4': // hits
                $query .= ' ORDER BY cc.name'.$aux;
            break;
            case '5': // hits
                $query .= ' ORDER BY u.username'.$aux;
            break;
            case '6': // hits
                $query .= ' ORDER BY kr.rating_count'.$aux;
            break;
            case '8': // hits
                $query .= ' ORDER BY i.ordering'.$aux;
            break;
            case '7':
                $query .= ' ORDER BY RAND()';
            break;
        }

        $db->setQuery($query, 0, $varaux);
        $items = $db->loadObjectList();

        return $items;
    }
}
?>