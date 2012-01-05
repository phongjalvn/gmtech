<?php
/*------------------------------------------------------------------------
 # YtUtils - Version 1.0
 # Copyright (C) 2009-2011 The YouTech Company. All Rights Reserved.
 # @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 # Author: The YouTech Company
 # Websites: http://www.ytcvn.com
 -------------------------------------------------------------------------*/
 
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
if (!class_exists('YtUtils')){
	class YtUtils{
		static $resizer = null;
		
		static function dump($str, $userdie=null){
			if (isset($usedie) && !$usedie) return false;
			echo "<pre>";
			switch(gettype($var)){
				case 'number':
				case 'string': echo gettype($var) . ".value = $var<br>"; break;
				case 'array': print_r($var); break;
				default:
					var_dump($var);
			}
			echo "</pre>";
			if (isset($usedie) && $usedie) die();
		}
		static function extractImages(& $str){
			$searchTags = array(
				'img' 		=> '/<img[^>]+src\s?=\s?"([^"]+)"[^>]+>/ui',
				'input' 	=> '/<input[^>]+type\s?=\s?"image"[^>]+src\s?=\s?"([^"]+)"[^>]+>/ui',
				'mosimage' 	=> '/<div class=\"mosimage\".*<\/div>/'
			);
			$images	 = array();
			foreach ($searchTags as $regex){
				preg_match_all($regex, $str, $m);
				if (count($m[0])){
					for ($i=0; $i < count($m[1]); $i++){
						$str = str_replace($m[0][$i], '', $str);
						array_push($images, $m[1][$i]);
					}
				}
			}
			return $images;
		}
		static function getImageResizerHelper($conf=array()){
			if (!isset(self::$resizer)){
				class_exists('YtImage') or include_once 'ytimage.php';
				self::$resizer = new YtImage($conf);
			} else if (isset($conf['background'])){
				self::$resizer->setBackground($conf['background']);
			}
			return self::$resizer;
		}
		static function resize($image, $width, $height, $mode='stretch', $image_type=IMAGETYPE_JPEG){
			if (!JFile::exists($image)){
				return false;
			}
			$info = pathinfo($image);
			$newfile_ext = image_type_to_extension($image_type, true);
			$img_code = $info['dirname'] . $mode . $width . $height . self::getImageResizerHelper()->getBackground();
			$newfile = YT_MODULE_CACHE . DS . $info['filename'] . '_' . md5($img_code) . $newfile_ext;
			
			if (!JFile::exists($newfile)){
				self::getImageResizerHelper()->load($image);
				self::getImageResizerHelper()->resizeto($width, $height, $mode);
				self::getImageResizerHelper()->save($newfile, $image_type);
			}
			
			if (JFile::exists($newfile)){
				$tmp = realpath($newfile);
				$tmp = str_replace(JPATH_SITE, JURI::base(true), $tmp);
				$tmp = str_replace(DS, '/', $tmp);
				return $tmp;
			} else {
				return false;
			}
		}
		static function getCache(){
			if ( defined('YT_MODULE_CACHE') ){
				return YT_MODULE_CACHE;
			} else {
				return JPATH_CACHE . DS . 'media';
			}
		}
		
		static function getDateAgo($date, $granularity=2) {
    		$date = strtotime($date);
    		$difference = time() - $date;
    		$periods = array(
		        JText::_('YEAR_LABEL')		=> 31536000,
		        JText::_('MONTH_LABEL')		=> 2628000,
		        JText::_('WEEK_LABEL')		=> 604800,
		        JText::_('DAY_LABEL')		=> 86400,
		        JText::_('HOUR_LABEL')		=> 3600,
		        JText::_('MINUTE_LABEL')	=> 60,
		        JText::_('SECOND_LABEL')	=> 1
    		);
    		$retval = '';
		    foreach ($periods as $key => $value) {
		        if ($difference >= $value) {
		            $time = floor($difference/$value);
		            $difference %= $value;
		            $retval .= ($retval ? ' ' : '').$time.' ';
		            $retval .= (($time > 1) ? $key.'s' : $key);
		            $granularity--;
		        }
		        if ($granularity == 0) { break; }
		    }
    		return $retval.' ago';
		}
		
		static function isUrl($url){
			return preg_match('/^(https?)\:\/\/[a-z0-9+\$_-]+(\.[a-z0-9+\$_-]+)*/', $url);
		}
		
		static function getTargetAttr($type='_self'){
			$attribs = '';
			switch($type){
				default:
				case '0':
				case '_self':
					break;
				case '1':
				case '_blank':
					$attribs = "target=\"_blank\"";
					break;
				case '2':
				case '_windowopen':
					$attribs = "onclick=\"window.open(this.href,'targetWindow','toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=yes,false');return false;\"";
					break;
			}
			return $attribs;
		}
	
	    static function shorten($string, $limit_chars=-1){
	    	return
	    		function_exists('mb_substr')
	    			? self::mb_shorten($string, $limit_chars)
	    			: self::cut_string($string, $limit_chars);
	    }
	    static function cut_string($str, $limit=-1){
	    	$strlen = strlen($str);
	    	if ($limit > $strlen || $limit<0){
	    		return $str;
	    	} else {
		    	$buffer = '';
		    	$num_chars = 0;
		    	$segs = preg_split ( '/(<[^>]*>)/', $str, - 1, PREG_SPLIT_DELIM_CAPTURE );
		    	$open = array();
		    	$selfClosing = explode(',', 'area,base,basefont,br,col,frame,hr,img,input,isindex,link,meta,param,embed');
		    	foreach ($segs as $k => $seg){
		    		$pos = strpos($seg, '<');
		    		if (false === $pos){
		    			$count_chars_seg = strlen($seg);
		    			if ($num_chars + $count_chars_seg < $limit){
		    				$buffer .= $seg;
		    				$num_chars += $count_chars_seg;
		    			} else if ($num_chars + $count_chars_seg == $limit) {
		    				$last = strlen($seg) - 1;
		    				if ($seg[$last]==' '){
		    					$buffer .= $seg . '...';
		    				} else {
		    					$buffer .= $seg . ' ...';
		    				}
		    				break;
		    			} else {
		    				$words = preg_split ( '/([^\s]*)/', $seg, - 1, PREG_SPLIT_DELIM_CAPTURE );
		    				$space_end = false;
		    				foreach ($words as $w){
		    					if (!empty($w)){
		    						$wlen = strlen($w);
		    						if ($num_chars + $wlen < $limit){
		    							$buffer .= $w;
		    							$num_chars += $wlen;
		    							$space_end = ($w == ' ');
		    						} else {
		    							if ($space_end){
		    								$buffer .= '...';
		    								$num_chars += 3;
		    							} else {
		    								$buffer .= ' ...';
		    								$num_chars += 4;
		    							}
		    							break;
		    						}
		    					}
		    				}
		    				break;
		    			}
		    		} else {
		    			preg_match('/^<([\/]?\s?)([a-zA-Z0-9]+)\s?[^>]*>$/', $seg, $m);
		    			$tagclose = isset($m[1]) && trim($m[1])=='/';
		    			if (empty($m[1]) && isset($m[2]) && !in_array($m[2], $selfClosing)){
		    				array_push($open, $m[2]);
		    			} else if (trim($m[1])=='/') {
		    				$tag = array_pop($open);
		    				if ($tag != $m[2]){
		    					die('invalid close tag: '. $seg);
		    				}
		    			}
		    			$buffer .= $seg;
		    		}
		    	}
		    	while(count($open)>0){
		    		$tag = array_pop($open);
		    		$buffer .= "</$tag>";
		    	}
		    	return $buffer;
	    	}
	    }
		static function mb_shorten($str, $limit=-1){
			$encoding = mb_detect_encoding($str);
	    	$strlen = mb_strlen($str, $encoding);
	    	if ($limit > $strlen || $limit<0){
	    		return $str;
	    	} else {
		    	$buffer = '';
		    	$num_chars = 0;
		    	$segs = preg_split ( '/(<[^>]*>)/', $str, - 1, PREG_SPLIT_DELIM_CAPTURE );
		    	$open = array();
		    	$selfClosing = explode(',', 'area,base,basefont,br,col,frame,hr,img,input,isindex,link,meta,param,embed');
		    	foreach ($segs as $k => $seg){
		    		$pos = mb_strpos($seg, '<');
		    		if (false === $pos){
		    			$count_chars_seg = mb_strlen($seg, $encoding);
		    			if ($num_chars + $count_chars_seg < $limit){
		    				$buffer .= $seg;
		    				$num_chars += $count_chars_seg;
		    			} else if ($num_chars + $count_chars_seg == $limit) {
		    				$last = mb_strlen($seg, $encoding) - 1;
		    				if ($seg[$last]==' '){
		    					$buffer .= $seg . '...';
		    				} else {
		    					$buffer .= $seg . ' ...';
		    				}
		    				break;
		    			} else {
		    				$words = preg_split ( '/([^\s]*)/', $seg, - 1, PREG_SPLIT_DELIM_CAPTURE );
		    				$space_end = false;
		    				foreach ($words as $w){
		    					if (!empty($w)){
		    						$wlen = mb_strlen($w, $encoding);
		    						if ($num_chars + $wlen < $limit){
		    							$buffer .= $w;
		    							$num_chars += $wlen;
		    							$space_end = ($w == ' ');
		    						} else {
		    							if ($space_end){
		    								$buffer .= '...';
		    								$num_chars += 3;
		    							} else {
		    								$buffer .= ' ...';
		    								$num_chars += 4;
		    							}
		    							break;
		    						}
		    					}
		    				}
		    				break;
		    			}
		    		} else {
		    			preg_match('/^<([\/]?\s?)([a-zA-Z0-9]+)\s?[^>]*>$/', $seg, $m);
		    			$tagclose = isset($m[1]) && trim($m[1])=='/';
		    			if (empty($m[1]) && isset($m[2]) && !in_array($m[2], $selfClosing)){
		    				array_push($open, $m[2]);
		    			} else if (trim($m[1])=='/') {
		    				$tag = array_pop($open);
		    				if ($tag != $m[2]){
		    					die('invalid close tag: '. $seg);
		    				}
		    			}
		    			$buffer .= $seg;
		    		}
		    	}
		    	while(count($open)>0){
		    		$tag = array_pop($open);
		    		$buffer .= "</$tag>";
		    	}
		    	return $buffer;
	    	}
	    }
	}
}
