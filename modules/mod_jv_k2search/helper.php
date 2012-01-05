<?php
/**
* vmsearch Joomla! Module
*
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class modjvk2searchHelper
{
	function isIe($version) {
		return strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'msie ' . $version) !== false;
	}
	
	function correctbackroungPng($image) {
		return (modjvk2searchHelper::isIe(6) && !modjvk2searchHelper::isIe(7)) ? "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" . $image . "', sizingMethod='crop');background: none;" : "";
	}
	
}