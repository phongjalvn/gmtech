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
				<div class="yt_categories_wrap yt_clearfix">
					<?php
					$columns_max 	= $options->columns_max > 1 ? $options->columns_max : 1;
					$columns_style 	= "style=\"width:" . floor(9990/$columns_max)/100  . "%;\"";
					$columns_count	= count($section->child);
					$columns_index 	= 0;
					?>
					<?php foreach ($section->child as $category): ?>
					<?php
					$columns_index++;
					$columns_class = "";
					if ($columns_index%$columns_max==1 && $columns_count>1){
						$columns_class = " firstcol";
					}
					if ($columns_index%$columns_max==0 && $columns_count>1) {
						$columns_class = " lastcol";
					}
					?>
						<div class="yt_category_wrap<?php echo $columns_class; ?>" <?php echo $columns_style; ?>>
							<div class="yt_category_inner">
								<div class="yt_category_title yt_clearfix">
									<?php if (0 != $options->sub_category_link): ?>
									<a href="<?php echo $category->url; ?>" <?php echo YtUtils::getTargetAttr($options->sub_category_link_target); ?>>
									<?php endif; ?>
										<span><?php echo $category->title; ?></span>
									<?php if (0 != $options->sub_category_link): ?>
									</a>
									<?php endif; ?>
								</div>
								<?php
									$num_childs = count($category->child);
									if ($num_childs>0){
										$item0 = array_shift($category->child);
										$other = $category->child;
									} else {
										$item0 = null;
										$other = array();
									}
								?>
								<?php if (isset($item0)): ?>
								<div class="yt_first_item">
									<?php if(0 != $options->item_image_disp && !empty($item0->image)): ?>
									<div class="yt_item_image yt_clearfix">
										<?php if (0 != $options->item_image_link): ?>
										<a class="yt_item_image_link" href="<?php echo $item0->url; ?>" <?php echo YtUtils::getTargetAttr($options->item_image_link_target); ?>>
										<?php endif; ?>
											<img src="<?php echo $item0->image; ?>" alt="<?php echo $item0->title;?>"/>
										<?php if (0 != $options->item_image_link): ?>
										</a>
										<?php endif; ?>
										<?php if (0 != $options->item_title_disp && !empty($item0->title)): ?>
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
									</div>
									<?php else : ?>
										<?php if (0 != $options->item_title_disp && !empty($item0->title)): ?>
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
									<?php endif; ?>
									
									
									<?php if (0 != $options->item_description_disp && !empty($item0->description)): ?>
									<div class="yt_item_description"><?php echo $item0->description;?></div>
									<?php endif; ?>
									
									<div class="yt_item_info yt_clearfix">
									<?php
										$oe = array('odd', 'even');
										$nb = 0;
									?>
										<?php if (0 != $options->item_readmore_disp && !empty($options->item_readmore_text)): ?>
										<div class="yt_item_readmore yt_clearfix <?php echo $oe[$nb++ % 2]; ?>">
											<a href="<?php echo $item0->url; ?>" <?php echo YtUtils::getTargetAttr($options->item_readmore_link_target); ?>>
												<span><?php echo $options->item_readmore_text;?></span>
											</a>
										</div>
										<?php endif; ?>
										<?php if (0 != $options->item_nb_view_disp && isset($item0->hits)): ?>
										<div class="yt_item_nb_view yt_clearfix <?php echo $oe[$nb++ % 2]; ?>">
											<span><?php echo JText::_('Read'); ?> <?php echo $item0->hits; ?></span>
										</div>
										<?php endif; ?>
									</div>
								</div>
								<?php endif; // $item0 ?>
								
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
										<li><a href="<?php echo $item->url; ?>" <?php echo $attrs; ?> <?php echo YtUtils::getTargetAttr($options->other_items_link_target); ?>><?php echo $item->title; ?></a></li>
										<?php endforeach; ?>
									</ul>
								</div>
								<?php endif; ?>
							</div>
						</div>
						<?php if($columns_index%$columns_max==0 && $columns_index!=$columns_count): ?>
						<div class="yt_row_separator"></div>
						<?php endif; ?>
					<?php endforeach; ?>
				</div>
			</div>
		</div>
	</div>
	<div class="yt_box_foot_left">
		<div class="yt_box_foot_right">
			<div class="yt_box_foot_center"></div>
		</div>
	</div>
</div>
