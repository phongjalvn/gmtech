<?php
defined('_JEXEC') or die('Restricted access');

if (!function_exists( 'twoj_get_tabs_text' )) {
	echo 'Please install and publish "2J Tabs Plugin"';
	return '';
}
echo twoj_get_tabs_text($params);
?> 