<?php
/**
* @package     Nivo-Szaki Slider
* @link        http://szathmari.hu
* @version     1.0
* @copyright   Copyright (C) 2011 szathmari.hu
* @license     GNU/GPL http://www.gnu.org/copyleft/gpl.html
*/
defined('_JEXEC') or die('Restricted access');

class modNivoSliderHelper
{
	var $controlNavThumbsReplace;
	var $dirs;
	
	function render($params)
	{
		global $mainframe;
		$document = & JFactory :: getDocument();
		$URLOriginal = JURI::root();
		$module_base = $URLOriginal . 'modules/mod_nivoslider/assets/';
		if ($params->get('jQuery', '1'))
			JHTML :: script('jquery.js', $module_base);
		JHTML :: script('jquery.nivo.slider.js', $module_base);
		$customStyle = "/* Nivo-Szaki Slider custom style */\n";
		$moduleclassSfx = 'NivoSzakiSlider';
		if ($params->get('moduleclass_sfx', ''))
			$moduleclassSfx = $params->get('moduleclass_sfx', '');
		$imagesDir = rtrim($params->get('imagesDir', 'images/banners/'), '/\\');
		$subDir = $params->get('subDir', 0);
		if ($params->get('style', 'enhanced') == 'enhanced')
			$document->addStyleSheet($module_base . 'nivo-slider-enhanced.css', 'text/css', 'screen');
		else
			$document->addStyleSheet($module_base . 'nivo-slider.css', 'text/css', 'screen');
		if ($params->get('customStyle'))
		{
			$customStyle = trim($params->get('customStyle'));
		}
		
		$soundFX = $params->get('soundFX', 0);
		$soundVol = $params->get('soundVol', 1);
		$sound = $module_base . $params->get('sound', 'nivo-szakislider.ogg');
		$jsSoundFX ='';
		if ($soundFX) {
			$jsSoundFX = "if (audSprt) soundFX.play();";
			$document->addScriptDeclaration("
			var audSprt = !!(document.createElement('audio').canPlayType);
			if (audSprt) {
			soundFX = new Audio('$sound');
			soundFX.preload = true;
			soundFX.volume=$soundVol;
			}
			");
		}
		
		$effect = $params->get('effect', 'random');
		$slices = $params->get('slices', '15');
		$animSpeed = $params->get('animSpeed', 500);
		$pauseTime = $params->get('pauseTime', 3000);
		$startSlide = $params->get('startSlide', 0);
		$imagesAttributes = $params->get('imagesAttributes', 'Image1|Nivo-Szaki Slider|http://szathmari.hu');
		$target = $params->get('target', '_self');
		$directionNav = $params->get('directionNav', 1);
		$directionNavHide = $params->get('controlNav', 1);
		$controlNav = $params->get('controlNav', 1);
		$controlNavThumbs = $params->get('controlNavThumbs', 1);
		$controlNavThumbsSearch = $params->get('controlNavThumbsSearch', '.jpg');
		$controlNavThumbsReplace = $params->get('controlNavThumbsReplace', '_thumb.jpg');
		$keyboardNav = $params->get('keyboardNav', 1);
		$pauseOnHover = $params->get('pauseOnHover', 1);
		$manualAdvance = $params->get('manualAdvance', 0);
		$captionOpacity = $params->get('captionOpacity', '0.8');
		$display = true;
		$document->addScriptDeclaration("
            jQuery.noConflict();
            (function($) {
                $(window).load(function(){
                    $('.".str_replace(' ', '.', $moduleclassSfx)." .nivoSlider').nivoSlider({
                    effect:'$effect',
                    slices:$slices,
                    animSpeed:$animSpeed,
                    pauseTime:$pauseTime,
                    startSlide:$startSlide,
                    beforeChange: function(){ $jsSoundFX },
                    directionNav:$directionNav,
                    directionNavHide:$directionNavHide,
                    controlNav:$controlNav,
                    controlNavThumbs:$controlNavThumbs, 
                    controlNavThumbsFromRel:false, 
                    controlNavThumbsSearch: '$controlNavThumbsSearch',
                    controlNavThumbsReplace: '$controlNavThumbsReplace',
                    keyboardNav:$keyboardNav,
                    pauseOnHover:$pauseOnHover, 
                    manualAdvance:$manualAdvance,
                    captionOpacity:$captionOpacity 
                    });
                });
            })(jQuery);
        ");
		$html = "<div class='$moduleclassSfx'><div class='nivoSlider'>\n";
		
		if ($subDir)
		{
			$this->dirs = array();
			modNivoSliderHelper :: subdirs($imagesDir);
			$imagesDir = $this->dirs;
		} 
			else
				$imagesDir = array($imagesDir);

		$images = modNivoSliderHelper :: getImages($params, $imagesDir);
		if (!$images) 
		{
			echo JText::_('Images not found');
			return false;
		}
		
		list($width, $height, $type, $attr) = getimagesize($images[0]);
		$customStyle .= ".$moduleclassSfx .nivoSlider {width:".
			$width."px;height:".$height."px;}\n".$customStyle;
		$document->addStyleDeclaration($customStyle);
		
		if ($target != '_self')
			$target=" target='$target'"; 
			else
				$target='';
		$i = 0;
		$p[] = '@\0|\t|\x0B| {2}@i';
		$r[] = '';
		$p[] = '@ +\||\| +@i';
		$r[] = '|';
		$imagesAttributes = htmlspecialchars(preg_replace($p, $r, $imagesAttributes));
		$imagesAttributes = explode("\n", $imagesAttributes);
		$imgAtt = array();
		foreach ($imagesAttributes as $t)
		{
			$imgAtt[] = explode("|", $t);
		}
		foreach ($images as $image)
		{
			$nimg = '';
			if (isset($imgAtt[$i][2]))
				$nimg = "<a href=\"" . $imgAtt[$i][2] . "\"$target>";
			$URLimg = str_replace('+' , '%20' , 
					str_replace("%2F", "/",
					urlencode(utf8_encode($images[$i]))));
			$nimg .= "<img src='$URLOriginal$URLimg'";
			if (isset($imgAtt[$i][0]))
				$nimg .= " alt='" . $imgAtt[$i][0] . "'";
			if (isset($imgAtt[$i][1]))
				$nimg .= " title='" . $imgAtt[$i][1] . "'";
			$nimg .= " />";
			if (isset($imgAtt[$i][2]))
				$nimg .= "</a>";
			$html .= $nimg . "\n";
			$i++;
		}
		$html .= '</div></div>';
		if ($display == true)
			echo $html;
		else
			echo '&nbsp;';
	}


	function subdirs($dir)
	{
		foreach(glob($dir, GLOB_ONLYDIR) as $i=>$k)
		{
			$this->dirs[] = $k;
			modNivoSliderHelper :: subdirs($k.'/*');
		}
	}  
	
	function getImages($params, $dir)
	{
		$files = array();
		$controlNavThumbsReplace = $params->get('controlNavThumbsReplace', '_thumb.jpg');
		foreach ($dir as $i=>$k){
			foreach (array_merge(
				(array)glob("$k/*.jpg"),
				(array)glob("$k/*.png"),
				(array)glob("$k/*.gif")) as $filename)
			{
				if ($filename && !preg_match("/$controlNavThumbsReplace/", $filename))
					$files[] = $filename;
			}
		}
		return $files;
	}
}