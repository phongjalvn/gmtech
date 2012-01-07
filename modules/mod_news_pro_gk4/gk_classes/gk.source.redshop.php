<?php

/**
* redSHOP Source class
* @package News Show Pro GK4
* @Copyright (C) 2009-2010 Gavick.com
* @ All rights reserved
* @ Joomla! is Free Software
* @ Released under GNU/GPL License : http://www.gnu.org/copyleft/gpl.html
* @version $Revision: 4.0.0 $
**/

// no direct access
defined('_JEXEC') or die('Restricted access');

class NSP_GK4_RedShop_Source {
	// Method to get sources of articles
	function getSources($config) {
		global $mainframe;
		//
		$db =& JFactory::getDBO();
		// if source type is section / sections
		$source = false;
		$where1 = '';
		$where2 = '';
		//
		if($config['data_source'] == 'redshop_categories'){
			$source = $config['redshop_categories'];
			$where1 = ' c.category_id = ';
			$where2 = ' OR c.category_id = ';
		} else {
			$source = strpos($config['redshop_products'],',') !== false ? explode(',', $config['redshop_products']) : $config['redshop_products'];
			$where1 = ' content.product_id = ';
			$where2 = ' OR content.product_id = ';	
		}
		//	
		$where = ''; // initialize WHERE condition
		// generating WHERE condition
		for($i = 0;$i < count($source);$i++){
			if(count($source) == 1) $where .= ($i == 0) ? $where1.$source : $where2.$source;
			else $where .= ($i == 0) ? $where1.$source[$i] : $where2.$source[$i];		
		}
		//
		$query_name = '
			SELECT DISTINCT 
				c.category_id AS ID,  
				c.category_name AS name
			FROM 
				#__redshop_product_category_xref AS cx
			LEFT JOIN 
                #__redshop_category AS c
                ON
                cx.category_id = c.category_id
			LEFT JOIN 
				#__redshop_product AS content 
				ON 
				cx.product_id = content.product_id 
			WHERE 
				( '.$where.' ) 
				AND 
				c.published = 1
		';
		// Executing SQL Query
		$db->setQuery($query_name);
		//
		return $db->loadObjectList();
	}
	// Method to get articles in standard mode 
	function getProducts($categories, $config, $amount) {	
		// mainframe
		global $mainframe;
		$sql_where = '';
		//
		if($categories) {				
			$j = 0;
			// getting categories ItemIDs
			foreach ($categories as $item) {
				$sql_where .= ($j != 0) ? ' OR category.category_id = '.$item->ID : ' category.category_id = '.$item->ID;
				$j++;
			}	
		}		
		// Arrays for content
		$content_id = array();
		$content_cid = array();
		$content_title = array();
		$content_text = array();
		$content_date = array();
		$content_date_publish = array();
		$content_price = array();
		$content_discount_price = array();
		$content_discount_start = array();
		$content_discount_end = array();
		$content_cat_name = array();
		$content_hits = array();
		$content_manufacturer = array();
		$content_supplier = array();
		$content_product_image = array();
		$news_amount = 0;
		// Initializing standard Joomla classes and SQL necessary variables
		$db =& JFactory::getDBO();
		$user =& JFactory::getUser();
		$aid = $user->get('aid', 0);
		$date =& JFactory::getDate("now", $config['time_offset']);
		$now  = $date->toMySQL();
		$nullDate = $db->getNullDate();
		// Overwrite SQL query when user set IDs manually
		if($config['data_source'] == 'redshop_products' && $config['redshop_products'] != ''){
			// initializing variables
			$sql_where = '';
			$ids = explode(',', $config['redshop_products']);
			//
			for($i = 0; $i < count($ids); $i++ ){	
				// linking string with content IDs
				$sql_where .= ($i != 0) ? ' OR content.product_id = '.$ids[$i] : ' content.product_id = '.$ids[$i];
			}
		}		
		// if some data are available
		if(count($categories) > 0){
			// when showing only frontpage articles is disabled
			$featured_con = ($config['only_frontpage'] == 0) ? (($config['news_frontpage'] == 0) ? ' AND content.product_special = 0 ' : '' ) : ' AND content.product_special = 1 ';
			$since_con = '';
			if($config['news_since'] !== '') $since_con = ' AND content.publish_date >= ' . $db->Quote($config['news_since']);
			// Ordering string
			$order_options = '';
			// When sort value is random
			if($config['news_sort_value'] == 'random') {
				$order_options = ' RAND() '; 
			}else{ // when sort value is different than random
                $sort_value = '';
                if($config['news_sort_value'] == 'created') $sort_value = 'publish_date';
                else if($config['news_sort_value'] == 'title') $sort_value = 'product_name';
                else if($config['news_sort_value'] == 'hits') $sort_value = 'visited';
                else $sort_value = 'product_id';
			
				$order_options = ' content.'.$sort_value.' '.$config['news_sort_order'].' ';
			}	
			// creating SQL query
			$query_news = '
			SELECT DISTINCT
                content.product_id AS ID,
                category.category_id AS CID,
                content.product_name AS title,
                content.product_desc AS text,
                content.update_date AS date,
                content.publish_date AS date_publish,
                content.product_price AS price,
                content.discount_price AS discount_price,
                content.discount_stratdate AS discount_start,
                content.discount_enddate AS discount_end,
				category.category_name AS cat_name,
				content.visited AS hits,
				manufacturer.manufacturer_name AS manufacturer,
				supplier.supplier_name AS supplier,
				content.product_full_image AS product_image
			FROM 
				#__redshop_product AS content 
				LEFT JOIN 
					#__redshop_product_category_xref AS category_xref
					ON 
                    category_xref.product_id = content.product_id 
				LEFT JOIN 
					#__redshop_category AS category 
					ON 
                    category_xref.category_id = category.category_id 
                LEFT JOIN
                    #__redshop_manufacturer AS manufacturer
                    ON
                    manufacturer.manufacturer_id = content.manufacturer_id
                LEFT JOIN
                    #__redshop_supplier AS supplier
                    ON
                    supplier.supplier_id = content.supplier_id   		
			WHERE 
                content.published = 1 
                AND category.published = 1  
				AND ( '.$sql_where.' ) 
				'.$featured_con.' 
				'.$since_con.'
			ORDER BY 
				'.$order_options.'
			LIMIT
				'.($config['startposition']).','.$amount.';
			';
			// run SQL query
			$db->setQuery($query_news);
			// when exist some results
			if($news = $db->loadObjectList()) {
				// generating tables of news data
				foreach($news as $item) {											
                    $content_id[] = $item->ID;
                    $content_cid[] = $item->CID;
                    $content_title[] = $item->title;
                    $content_text[] = $item->text;
                    $content_date[] = $item->date;
                    $content_date_publish[] = $item->date_publish;
                    $content_price[] = $item->price;
                    $content_discount_price[] = $item->discount_price;
                    $content_discount_start[] = $item->discount_start;
                    $content_discount_end[] = $item->discount_end;
                    $content_cat_name[] = $item->cat_name;
                    $content_hits[] = $item->hits;
                    $content_manufacturer[] = $item->manufacturer;
                    $content_supplier[] = $item->supplier;
                    $content_product_image[] = $item->product_image;
                    $news_amount++;
				}
			}
		}
		// Returning data in hash table
		return array(
			"ID" => $content_id,
			"CID" => $content_cid,
			"title" => $content_title,
			"text" => $content_text,
			"date" => $content_date,
			"date_publish" => $content_date_publish,
			"price" => $content_price,
			"discount_price" => $content_discount_price,
			"discount_start" => $content_discount_start,
			"discount_end" => $content_discount_end,
            "cat_name" => $content_cat_name,
			"hits" => $content_hits,
			"manufacturer" => $content_manufacturer,
			"supplier" => $content_supplier,
			"product_image" => $content_product_image,
			"news_amount" => $news_amount
		);
	}
	
	// Method to get amount of the product comments 
	function getComments($content, $config) {
		// 
		$db =& JFactory::getDBO();
		$counters_tab = array();
		// 
		if(count($content) > 0) {
			// initializing variables
			$sql_where = '';
			$ids = $content['ID'];
			//
			for($i = 0; $i < count($ids); $i++ ) {	
				// linking string with content IDs
				$sql_where .= ($i != 0) ? ' OR content.product_id = '.$ids[$i] : ' content.product_id = '.$ids[$i];
			}
			// creating SQL query
			$query_news = '
			SELECT 
				content.product_id AS id,
				COUNT(comments.product_id) AS count			
			FROM 
				#__redshop_product AS content 
				LEFT JOIN 
					#__redshop_product_rating AS comments
					ON 
                    comments.product_id = content.product_id 		
			WHERE 
				comments.published
				AND ( '.$sql_where.' ) 
			GROUP BY 
				comments.product_id
			;';
			// run SQL query
			$db->setQuery($query_news);
			// when exist some results
			if($counters = $db->loadObjectList()) {
				// generating tables of news data
				foreach($counters as $item) {						
					$counters_tab['product'.$item->id] = $item->count;
				}
			}
		}
		
		return $counters_tab;
	}	
    
    function getCurrency() {
        //currency_symbol
		$db =& JFactory::getDBO();
		$query = 'SELECT currency_symbol FROM  #__redshop_configuration LIMIT 1';
		// Executing SQL Query
		$db->setQuery($query);
		$currency_symbol = '';
		// when exist some results
		if($res = $db->loadObjectList()) {
            // generating tables of news data
            foreach($res as $item) {						
                $currency_symbol = $item->currency_symbol;
            }
            
            return $currency_symbol;
		} else {
            return '';
		}
    }	
}

?>