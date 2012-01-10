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
?>
<div class="yt_section_header">
	<div class="yt_section_header_left">
		<div class="yt_section_header_right">
			<div class="yt_section_header_center">
				<div class="yt_section_title yt_clearfix">
					<?php if (0 != $options->super_category_link): ?>
					<a class="yt_section_title" href="<?php echo $section->url; ?>" title="<?php echo $section->title; ?>" <?php echo YtUtils::getTargetAttr($options->super_category_link_target); ?>>
					<?php endif; ?>
						<span class="yt_section_title"><?php echo $section->title; ?></span>
					<?php if (0 != $options->super_category_link): ?>
					</a>
					<?php endif; ?>
					<a class="yt_section_state expanded"><span></span></a>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="yt_section_content">
	<div class="yt_section_content_left">
		<div class="yt_section_content_right">
			<div class="yt_section_content_center">
				<?php
					$categories_count = count($section->child);
				?>
				<?php if (0 != $options->list_subcategory && $categories_count>0): ?>
				<div class="yt_categories_nav yt_clearfix">
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
				<?php endif; ?>
				
				<?php if ($categories_count>0): ?>
					<div class="yt_categories_wrap">
					<?php
						$columns_max 	= $options->columns_max > 1 ? $options->columns_max : 1;
						$columns_style 	= "style=\"width:" . floor(9990/$columns_max)/100  . "%;\"";
						$is_first_category = true;
						foreach ($section->child as $category):
							$child_count 	= count($category->child);
							$child_index	= 0;
							if ($is_first_category){
								$is_first_category = false;
								$style_first_cat = " selected";
							} else {
								$style_first_cat = "";
							}
							if ($child_count>0):
							?>
							<div class="yt_category_wrap category_<?php echo $category->id; ?><?php echo $style_first_cat; ?>">
								<div class="yt_category_inner yt_clearfix">
								<?php foreach ($category->child as $item): ?>
								<?php
									$child_index++;
									$columns_class = "";
									if ($child_index%$columns_max==1 && $child_count>1){
										$columns_class = " firstcol";
									}
									if ($child_index%$columns_max==0 && $child_count>1) {
										$columns_class = " lastcol";
									}
								?>
									<div class="yt_item_wrap<?php echo $columns_class; ?>" <?php echo $columns_style; ?>>
										<div class="yt_item_inner">
											<?php if(0!=$options->item_image_disp && !empty($item->image)): ?>
											<div class="yt_item_image yt_clearfix">
												<?php if (0 != $options->item_image_link): ?>
												<a class="yt_item_image_link" href="<?php echo $item->url; ?>" <?php echo YtUtils::getTargetAttr($options->item_image_link_target); ?>>
												<?php endif; ?>
													<img src="<?php echo $item->image; ?>" alt="<?php echo $item->title;?>"/>
												<?php if (0 != $options->item_image_link): ?>
												</a>
												<?php endif; ?>
											</div>
											<?php endif; ?>
											
											<?php if (0!=$options->item_title_disp && !empty($item->title)): ?>
											<div class="yt_item_title">
												<?php if (0 != $options->item_title_link): ?>
												<a href="<?php echo $item->url; ?>" <?php echo YtUtils::getTargetAttr($options->item_title_link_target); ?>>
												<?php endif; ?>
													<span><?php echo $item->title;?></span>
												<?php if (0 != $options->item_title_link): ?>
												</a>
												<?php endif; ?>
											</div>
											<?php endif; ?>
											
											<?php if (0!=$options->item_description_disp && !empty($item->description)): ?>
											<div class="yt_item_description"><?php echo $item->description;?></div>
											<?php endif; ?>
											
											<div class="yt_item_info yt_clearfix">
											<?php
												$oe = array('odd', 'even');
												$nb = 0;
											?>
												<?php if (0 != $options->item_nb_view_disp && isset($item->hits)): ?>
												<div class="yt_item_nb_view yt_clearfix <?php echo $oe[$nb++ % 2]; ?>">
													<span><?php echo JText::_('Read'); ?> <?php echo $item->hits; ?></span>
												</div>
												<?php endif; ?>
												<?php if (0 != $options->item_comment_disp && isset($item->comments)): ?>
												<div class="yt_item_comment <?php echo $oe[$nb++ % 2]; ?>">
													<span><?php echo JText::_('Comments');?> (<?php echo $item->comments; ?>)</span>
												</div>
												<?php endif; ?>
												<?php if (0 != $options->item_created_disp && isset($item->createdfrom)): ?>
												<div class="yt_item_created <?php echo $oe[$nb++ % 2]; ?>">
													<span><?php echo $item->createdfrom; ?></span>
												</div>
												<?php endif; ?>
												<?php if (0 != $options->item_readmore_disp && !empty($options->item_readmore_text)): ?>
												<div class="yt_item_readmore <?php echo $oe[$nb++ % 2]; ?>">
													<a href="<?php echo $item->url; ?>" <?php echo YtUtils::getTargetAttr($options->item_readmore_link_target); ?>>
														<span><?php echo $options->item_readmore_text;?></span>
													</a>
												</div>
												<?php endif; ?>
											</div>
										</div>
									</div>
									<?php if($child_index % $columns_max==0 && $child_index!=$child_count): ?>
									<div class="yt_row_separator"></div>
									<?php endif; ?>
								<?php endforeach; ?>
								</div>
								<div class="yt_browsers yt_clearfix">
									<div class="btn cat_<?php echo $category->id; ?>">
										<a href="<?php echo $category->url; ?>" <?php echo YtUtils::getTargetAttr($options->sub_category_link_target); ?>><span><?php echo JText::_('MORE_FROM_CATEGOTY'); ?> <?php echo $category->title; ?></span></a>
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
