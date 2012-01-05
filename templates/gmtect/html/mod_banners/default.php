<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<ul>
  <?php foreach($list as $item) : ?>
    <li class="banneritem<?php echo $params->get( 'moduleclass_sfx' ) ?>">
      <?php echo modBannersHelper::renderBanner($params, $item); ?>
    </li>
  <?php endforeach; ?>
</ul>
