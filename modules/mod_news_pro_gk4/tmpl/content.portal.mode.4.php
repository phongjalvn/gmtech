<?php

/**
* Default template
* @package Gavick News Show Pro GK4
* @Copyright (C) 2009-2011 Gavick.com
* @ All rights reserved
* @ Joomla! is Free Software
* @ Released under GNU/GPL License : http://www.gnu.org/copyleft/gpl.html
* @version $Revision: 4.3.0.0 $
**/

// no direct access
defined('_JEXEC') or die('Restricted access');

$news_amount = $this->parent->config['news_portal_mode_4_amount'];

?>

<?php if($news_amount > 0) : ?>
<div class="nsp_main_portal_mode4<?php if($this->parent->config['autoanim'] == TRUE) echo ' autoanim'; ?> nsp_fs<?php echo $this->parent->config['module_font_size']; ?>" id="nsp-<?php echo $this->parent->config['module_id']; ?>">
	<?php if($this->parent->config['news_portal_mode_4_amount'] > 0) : ?>
	<div class="nsp_images">
		<div class="nsp_arts">
			<div class="nsp_arts_scroll">
			<?php for($i = 0; $i < count($news_image_tab); $i++) : ?>
				<div class="nsp_art">
					<div style="width:<?php echo $this->parent->config['img_width']; ?>px;height:<?php echo $this->parent->config['img_height']; ?>px;">
						<?php echo $news_image_tab[$i];?>
						<div class="nsp_art_headline">
							<?php echo $news_title_tab[$i];?>
						</div>
					</div>
				</div>
			<?php endfor; ?>
			</div>	
		</div>
	</div>
	<?php endif; ?>
		
	<a class="nsp_prev"><?php echo JText::_('NSP_PREV'); ?></a>
	<a class="nsp_next"><?php echo JText::_('NSP_NEXT'); ?></a>
</div>
<?php else : ?>
<p><?php echo JText::_('NSP_ERROR'); ?></p>
<?php endif; ?>