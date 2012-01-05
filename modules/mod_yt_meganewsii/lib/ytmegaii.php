<?php
/*------------------------------------------------------------------------
 # Yt Mega News II - Version 1.0
 # Copyright (C) 2009-2011 The YouTech Company. All Rights Reserved.
 # @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 # Author: The YouTech Company
 # Websites: http://www.ytcvn.com
 -------------------------------------------------------------------------*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

if (!class_exists('YtMegaII')){
	class YtMegaII {
		private $options;
		private $data = null;
		private $reader = null;

		function __construct($options=array()){
			$this->options = (object)array_merge( $this->_getOptions(), $options );
		}

		private function _loadData(){
			if (!isset($this->data)){
				$this->data = $this->_getReader()->getList($this->options);
			}
		}

		private function _getReader(){
			if (!isset($this->reader)){
				$class = get_class($this);
				if (!empty($this->options->reader)){
					$class .= $this->options->reader;
				} else {
					$class .= 'Reader';
				}
				$filename = dirname(__FILE__) . DS . strtolower($class) . '.php';
				if (file_exists($filename)){
					include $filename;
					$reader = new $class();
					if (!method_exists($reader, 'getList')){
						throw new Exception("function $class-\>getList has not implement yet.");
					}
					return $reader;
				} else {
					throw new Exception("File not found: " . $filename);
				}
			}
			return $this->reader;
		}

		private function _getOptions(){
			return array(
				'moduleclass_sfx' => '',
				'module_width' => null,
				'theme' => 'theme1',
				'source' => array(),
				'source_order_by' => 'created',
				'source_filter' => 0,
				'columns_max' => 3,
				'articles_max' => -1,
				'super_category_link' => '1',
				'super_category_link_target' => '_self',
				'sub_category_link' => '1',
				'sub_category_link_target' => '_self',
				'list_subcategory' => '1',
				'sub_category_title_maxchars'=>-1,
				'first_category_only' => 0,
				'item_image_disp' => '1',
				'item_image_link' => '1',
				'item_image_link_target' => '_self',
				'item_title_disp' => '1',
				'item_title_link' => '1',
				'item_title_color' => '#000',
				'item_title_link_target' => '_self',
				'item_title_maxchars' => -1,
				'item_description_disp' => '1',
				'item_description_color' => '#000',
				'item_description_keephtml' => '1',
				'item_description_maxchars' => -1,
				'tooltip_disp' => '1',
				'tooltip_width' => '360',
				'tooltip_image_maxwidth' => '150',
			 	'item_nb_view_disp' => '1',
			 	'item_comment_disp' => '1',
			 	'item_created_disp' => '1',
			 	'item_readmore_disp' => '1',
				'item_readmore_text' => 'Read more...',
				'item_readmore_link_target' => '_self',
				'other_items_link_target' => '_self',
				'item_thumbnail_width' => '222',
				'item_thumbnail_height' => '80',
				'item_thumbnail_background' => '#FFFFFF',
				'item_thumbnail_mode' => 'none',
				'introtext' => '',
				'footertext' => ''
			);
		}
		public function getOption($key=null, $default=null){
			if (null==$key){
				return $this->options;
			} else {
				if (isset($this->options[$key])){
					return $this->options[$key];
				} else {
					return $default;
				}
			}
			return $value;
		}
		public function getData(){
			isset($this->data) or $this->_loadData();
			return $this->data;
		}
	}
}