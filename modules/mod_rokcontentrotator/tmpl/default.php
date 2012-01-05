<?php // no direct access
/**
 * @version   1.5 April 28, 2011
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2011 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */
defined('_JEXEC') or die('Restricted access'); 

?>
<div class="rok-content-rotator<?php echo $params->get('moduleclass_sfx'); ?>"><div class="rotator-2"><div class="rotator-3"><div class="rotator-4">
	<?php if ($params->get('show_title') == 1) :?><div class="rotator-title"><?php echo $module->title; ?></div><?php endif; ?>
    <ul>
        <?php foreach ($list as $item) :  ?>
        <li>
            <h2><a class="rok-content-rotator-link" href="#"><?php echo $item->title; ?></a></h2>
            <div class="content">
                <?php echo $item->introtext; ?> 
                <?php if ($params->get('show_readmore') == 1) :?>
                <a href="<?php echo $item->link; ?>" class="readon"><?php echo $params->get('readmore'); ?></a> 
                <?php endif; ?>
            </div>
        </li>
    <?php endforeach; ?>
    </ul>
</div></div></div></div>
