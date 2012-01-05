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

if (!class_exists('YtImage')){
	class YtImage {
		private $image;
		private $imageType;
		private $config;
		private static $_callbacks = array(
			IMAGETYPE_GIF  => array('output' => 'imagegif',  'create' => 'imagecreatefromgif'),
			IMAGETYPE_JPEG => array('output' => 'imagejpeg', 'create' => 'imagecreatefromjpeg'),
			IMAGETYPE_PNG  => array('output' => 'imagepng',  'create' => 'imagecreatefrompng'),
			IMAGETYPE_XBM  => array('output' => 'imagexbm',  'create' => 'imagecreatefromxbm'),
			IMAGETYPE_WBMP => array('output' => 'imagewbmp', 'create' => 'imagecreatefromxbm')
		);
		private static $_mode = array( 'center', 'fill', 'fit', 'stretch' );
	
		public function __construct($args=array()){
			$file = isset($args['file']) ? $args['file'] : '';
			$this->config = array();
			$this->config['background'] = isset($args['background']) ? $args['background'] : false;
			$this->config['debug'] = isset($args['debug']) ? $args['debug'] : false;
			$this->config['thumbnail_mode'] = isset($args['thumbnail_mode']) ? $args['thumbnail_mode'] : 'stretch';
			!is_file($file) OR $this->load($file);
		}
	
		function load($file) {
			$this->file = $file;
			$image_info = getimagesize($file);
			$this->imageType = $image_info[2];
			$this->image = call_user_func($this->_getCallback('create'), $file);
		}
	
		function save($fileout, $image_type=IMAGETYPE_JPEG, $quality=100) {
			if ( null == $image_type ){
				$image_type = $this->imageType;
			}
			
			if (!file_exists($fileout)){
				$info = pathinfo($fileout);
				if (!file_exists($info['dirname'])){
					@mkdir($info['dirname'], '0755', true);
				}
			} else {
				return $fileout;
			}
			
			$functionParameters = array();
			$functionParameters[] = $this->image;
			$functionParameters[] = $fileout;
	
			// set quality param for JPG file type
			if ( IMAGETYPE_JPEG == $image_type ) {
				$functionParameters[] = $quality;
			}
	
			// set quality param for PNG file type
			if ( IMAGETYPE_PNG == $image_type ) {
				$quality = round(($quality / 100) * 10);
				if ($quality < 1) {
					$quality = 1;
				} elseif ($quality > 10) {
					$quality = 10;
				}
				$quality = 10 - $quality;
				$functionParameters[] = $quality;
			}
	
			call_user_func_array($this->_getCallback('output', $image_type), $functionParameters);
			return $fileout;
		}
	
		function output($image_type=IMAGETYPE_JPEG) {
			if ( null == $image_type ){
				$image_type = $this->imageType;
			}
			$functionParameters = array();
			$functionParameters[] = $this->image;
			call_user_func_array($this->_getCallback('output'), $functionParameters);
		}
	
		function getWidth() {
			return imagesx($this->image);
		}
	
		function getHeight() {
			return imagesy($this->image);
		}
	
		function resizeToHeight($height) {
	
			$ratio = $height / $this->getHeight();
			$width = $this->getWidth() * $ratio;
			$this->resize($width,$height);
		}
	
		function resizeToWidth($width) {
			$ratio = $width / $this->getWidth();
			$height = $this->getheight() * $ratio;
			$this->resize($width,$height);
		}
	
		function scale($scale) {
			$width = $this->getWidth() * $scale/100;
			$height = $this->getheight() * $scale/100;
			$this->resize($width,$height);
		}
	
		function resize($width,$height) {
			$new_image = imagecreatetruecolor($width, $height);
			imagecopyresampled($new_image, $this->image, 0, 0, 0, 0, $width, $height, $this->getWidth(), $this->getHeight());
			$this->image = $new_image;
		}
	
		function _getCallback( $cb_type, $image_type=null ){
			if ( null === $image_type ) {
				$image_type = $this->imageType;
			}
	
			if (empty(self::$_callbacks[$image_type])) {
				throw new Exception("Unsupported image format.");
			}
			if (empty(self::$_callbacks[$image_type][$cb_type])) {
				throw new Exception("Callback not found.");
			}
			return self::$_callbacks[$image_type][$cb_type];
		}
	
		function resizeto($width, $height, $mode=null){
			if ( null === $mode || !in_array($mode, self::$_mode) ){
				$mode = $this->config['thumbnail_mode'];
			}
			
			$p = $this->_getConstraints($this->getWidth(), $this->getHeight(), $width, $height, $mode);
			$canvas = imagecreatetruecolor($width, $height);
	
			if( IMAGETYPE_GIF == $this->imageType || IMAGETYPE_PNG == $this->imageType ) {
				imagealphablending ( $canvas, false );
				imagesavealpha ( $canvas, true );
				$transparent = imagecolorallocatealpha ( $canvas, 255, 255, 255, 127 );
				imagefilledrectangle ( $canvas, 0, 0, $width, $height, $transparent );
			} else {
				if (false != $this->config['background'] && in_array($mode, array('center', 'fit'))){
					$background_color = $this->_getColor($this->config['background']);
					$background = imagecolorallocate ( $canvas, $background_color[0], $background_color[1], $background_color[2] );
					imagefilledrectangle ( $canvas, 0, 0, $width, $height, $background );
				}
			}
			
			imagecopyresampled($canvas, $this->image, $p[0], $p[1], $p[2], $p[3], $p[4], $p[5], $p[6], $p[7]);
			$this->image = $canvas;
			
		}
		function _getConstraints($ow, $oh, $nw, $nh, $mode){
	
			$srcX = 0;
			$srcY = 0;
			$srcW = $ow;
			$srcH = $oh;
	
			$dstX = 0;
			$dstY = 0;
			$dstW = $ow;
			$dstH = $oh;
	
			$or = 1.0*$ow/$oh;
			switch($mode){
				default:
				case 'stretch':
					$dstW = $nw;
					$dstH = $nh;
					break;
				case 'fit':
					if ($nw > $nh*$or){
						$dstW = round($nh*$or);
						$dstH = $nh;
						$dstX = ($nw-$dstW)/2;
						$dstY = 0;
					} else {
						$dstW = $nw;
						$dstH = round($nw/$or);
						$dstX = 0;
						$dstY = ($nh-$dstH)/2;
					}
					break;
				case 'center': // center
					if ($nw>$dstW) { $dstX = ($nw-$dstW)/2; }
					if ($nh>$dstH) { $dstY = ($nh-$dstH)/2; }
					if ($ow > $nw){ $srcX = ($ow-$nw) / 2; }
					if ($oh > $nh){ $srcY = ($oh-$nh) / 2; }
					break;
				case 'fill':
					if ($nw < $nh*$or){
						$dstW = round($nh*$or);
						$dstH = $nh;
						$dstX = ($nw-$dstW)/2;
						$dstY = 0;
					} else {
						$dstW = $nw;
						$dstH = round($nw/$or);
						$dstX = 0;
						$dstY = ($nh-$dstH)/2;
					}
					break;
			}
			if (isset($this->config['debug']) && $this->config['debug']){
				$this->messages = array($dstX, $dstY, $srcX, $srcY, $dstW, $dstH, $srcW, $srcH);
			}
			return array($dstX, $dstY, $srcX, $srcY, $dstW, $dstH, $srcW, $srcH);
		}
	
		function _getColor($c){
			$color = array(255, 255, 255);
			if (!empty($c)){
				preg_match("/\#([0-9A-F]{2})([0-9A-F]{2})([0-9A-F]{2})/", strtoupper($c), $m);
				if (count($m)>3){
					$color[0] = hexdec($m[1]);
					$color[1] = hexdec($m[2]);
					$color[2] = hexdec($m[3]);
				}
			}
			return $color;
		}
		
		function setBackground($color){
			$this->config['background'] = $color;
		}
		public function getBackground(){
			return $this->config['background'];
		}
	}
}
?>