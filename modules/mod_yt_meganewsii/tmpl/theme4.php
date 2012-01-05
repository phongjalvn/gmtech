<?php
/*------------------------------------------------------------------------
 # Yt Mega K2 Items II - Version 1.0
 # Copyright (C) 2009-2011 The YouTech Company. All Rights Reserved.
 # @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 # Author: The YouTech Company
 # Websites: http://www.ytcvn.com
 -------------------------------------------------------------------------*/
 
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
<div class="yt_section_header expanded">
	<div class="yt_section_header_left">
		<div class="yt_section_header_right">
			<div class="yt_section_header_center">
				<div class="yt_section_title yt_clearfix">
					<?php if (0!=$options->super_category_link): ?>
					<a class="yt_section_title" href="<?php echo $section->url; ?>" title="<?php echo $section->title; ?>" <?php echo YtUtils::getTargetAttr($options->super_category_link_target); ?>>
					<?php endif; ?>
						<span class="yt_section_title"><?php echo $section->title; ?></span>
					<?php if (0!=$options->super_category_link): ?>
					</a>
					<?php endif; ?>
					<a class="yt_section_state expanded"><span></span></a>
				</div>
			</div>
		</div>
	</div>
</div>
<?php
	$categories_count = count($section->child);
?>
<?php if (0!=$options->list_subcategory && $categories_count>0): ?>
<div class="yt_nav_content">
	<div class="yt_nav_content_left">
		<div class="yt_nav_content_right">
			<div class="yt_nav_content_center">
				<div class="yt_categories_nav yt_clearfix">
					<?php
						$prenav_text = JText::_('PRE_NAV_TEXT');
						if (isset($prenav_text) && !empty($prenav_text)):
					?>
					<span class="pre_categories_nav"><?php echo JText::_('PRE_NAV_TEXT'); ?></span>
					<?php endif; ?>
					<ul class="yt_categories_nav yt_clearfix">
					<?php
						$is_first_category_on_nav = true;
					?>
					<?php foreach ($section->child as $category): ?>
						<?php
						if ($is_first_category_on_nav){
							$is_first_category_on_nav = false;
							$nav_selected = " class=\"selected\"";
						} else {
							$nav_selected = "";
						}
						?>
						<li <?php echo $nav_selected; ?> id="<?php echo $category->id . '_' . rand().time(); ?>"><div><span><?php echo $category->title; ?></span></div></li>
					<?php endforeach; ?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<?php endif; ?>
<div class="yt_section_content">
	<div class="yt_section_content_left">
		<div class="yt_section_content_right">
			<div class="yt_section_content_center">
				<?php if ($categories_count>0): ?>
					<div class="yt_categories_wrap">
					<?php
						$columns_max 	= $options->columns_max > 1 ? $options->columns_max : 1;
						$columns_style 	= "style=\"width:" . floor(9990/$columns_max)/100  . "%;\"";
						$is_first_category = true;
						foreach ($section->child as $category):
							$child_count 	= count($category->child);
							if ($child_count>0):
								$j = 0;
								$category_childs = array();
								foreach ($category->child as $k => $item){
									if (!isset($category_childs[$j])){
										$category_childs[$j]=array();
									}
									$category_childs[$j][] =& $category->child[$k];
									$j = ++$j % $columns_max;
								}
								$col_index = 0;
								if ($is_first_category){
									$is_first_category = false;
									$style_first_cat = " selected";
								} else {
									$style_first_cat = "";
								}
							?>
							<div class="yt_category_wrap category_<?php echo $category->id; ?><?php echo $style_first_cat; ?>">
								<div class="yt_category_inner yt_clearfix">
								<?php foreach ($category_childs as $j => $items): ?>
								<?php
									if (count($items)<=0) { continue; }
									$col_index++;
									$columns_class = "";
									if ($col_index%$columns_max==1 || $columns_max==1){
										$columns_class = " firstcol";
									}
									if ($col_index%$columns_max==0 && $columns_max>1) {
										$columns_class = " lastcol";
									}
									$item0 = array_shift($items);
									$other = $items;
								?>
									<div class="yt_item_wrap<?php echo $columns_class; ?>" <?php echo $columns_style; ?>>
										<div class="yt_item_inner">
											<?php if(0!=$options->item_image_disp && !empty($item0->image)): ?>
											<div class="yt_item_image yt_clearfix">
												<?php if (0 != $options->item_image_link): ?>
												<a class="yt_item_image_link" href="<?php echo $item0->url; ?>" <?php echo YtUtils::getTargetAttr($options->item_image_link_target); ?>>
												<?php endif; ?>
													<img src="<?php echo $item0->image; ?>" alt="<?php echo $item0->title;?>"/>
												<?php if (0 != $options->item_image_link): ?>
												</a>
												<?php endif; ?>
											</div>
											<?php endif; ?>
											
											<?php if (0!=$options->item_title_disp && !empty($item0->title)): ?>
											<div class="yt_item_title">
												<?php if (0 != $options->item_title_link): ?>
												<a href="<?php echo $item0->url; ?>" <?php echo YtUtils::getTargetAttr($options->item_title_link_target); ?>>
												<?php endif; ?>
													<span><?php echo $item0->title;?></span>
												<?php if (0 != $options->item_title_link): ?>
												</a>
												<?php endif; ?>
											</div>
											<?php endif; ?>
											
											<?php if (0!=$options->item_description_disp && !empty($item0->description)): ?>
											<div class="yt_item_description"><?php echo $item0->description;?></div>
											<?php endif; ?>
											
											<div class="yt_item_info yt_clearfix">
												<?php if (0 != $options->item_nb_view_disp && isset($item0->hits)): ?>
												<div class="yt_item_nb_view">
													<span><?php echo JText::_('Read:');?> <?php echo $item0->hits; ?></span>
												</div>
												<?php endif; ?>
												<?php if (0 != $options->item_comment_disp && isset($item0->comments)): ?>
												<div class="yt_item_comment">
													<span><?php echo $item0->comments; ?> <?php echo JText::_('Comments');?></span>
												</div>
												<?php endif; ?>
												<?php if (0 != $options->item_created_disp && isset($item0->createdfrom)): ?>
												<div class="yt_item_created">
													<span><?php echo $item0->createdfrom; ?></span>
												</div>
												<?php endif; ?>
												<?php if (0 != $options->item_readmore_disp && !empty($options->item_readmore_text)): ?>
												<div class="yt_item_readmore">
													<a href="<?php echo $item0->url; ?>" <?php echo YtUtils::getTargetAttr($options->item_readmore_link_target); ?>>
														<span><?php echo $options->item_readmore_text;?></span>
													</a>
												</div>
												<?php endif; ?>
											</div>
											
											<?php if( count($other) > 0 ): ?>
											<div class="yt_list_others">
												<ul>
													<?php foreach ($other as $k => $item): ?>
													<?php
														if (0 != $options->tooltip_disp){
															$u = rand().time();
															$attrs = "id=\"megaii__{$u}\" class=\"has_tooltip\"";
															$tooltips[] = array(
																'id' => $u,
																'item' => $other[$k]
															);
														}
													?>
													<li><a href="<?php echo $item->url; ?>" <?php echo $attrs; ?> <?php echo YtUtils::getTargetAttr($options->other_items_link_target); ?>><?php echo $item->title; ?></a> <span class="created"><?php echo $item->createdfrom; ?></span></li>
													<?php endforeach; ?>
												</ul>
											</div>
											<?php endif; ?>
										</div>
									</div>
								<?php endforeach; ?>
								</div>
								<div class="yt_browsers yt_clearfix">
									<div class="btn category cat_<?php echo $category->id; ?>">
										<a href="<?php echo $category->url; ?>" <?php echo YtUtils::getTargetAttr($options->sub_category_link_target); ?>><span><?php echo JText::_('MORE_FROM_CATEGOTY'); ?> <?php echo $category->title; ?></span></a>
									</div>
									<div class="btn section sec_<?php echo $section->id; ?>">
										<a href="<?php echo $section->url; ?>" <?php echo YtUtils::getTargetAttr($options->super_category_link_target); ?>><span><?php echo JText::_('MORE_FROM_SECTION'); ?> <?php echo $section->title; ?></span></a>
									</div>
								</div>
							</div>
							<?php
							endif;
						endforeach;
					?>
					</div>
				<?php endif; ?>
			</div>
		</div>
	</div>
	<div class="yt_box_foot_left">
		<div class="yt_box_foot_right">
			<div class="yt_box_foot_center"></div>
		</div>
	</div>
</div>
