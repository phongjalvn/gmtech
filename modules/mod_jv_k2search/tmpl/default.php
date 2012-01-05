<?
JHTML::_('stylesheet','style.css','modules/mod_jv_k2search/styles/default/');
?>

<script type="text/javascript" src="modules/mod_jv_k2search/js/globalsearch.js"></script>
<script type="text/javascript">
	var images_path = "<?php echo JURI::base(); ?>";
	var images_path1 = "<?php echo JURI::base(); ?>";
</script>
<div class="jv-k2search-wrap">
<div class="default">
	<div class="k2product" style="width: <?php echo $search_width; ?>px;">
		<form action="index.php" method="post">
		<div class="searchbox">
		<input class="searchfield" type="text"  value="<? echo $Searchresult;?>" onkeyup="showHint(this.value,'<?php echo $category_limit;?>','<?php echo $product_limit;?>')" onblur="if(this.value=='') this.value='<? echo $Searchresult;?>';" onfocus="if(this.value=='<? echo $Searchresult;?>') this.value='';" size="20" maxlength="25" name="searchword" autocomplete="off" />
			<div id="search_k2"></div>
			<button class="search-magnifier" type="submit" value="Search">Search</button>
		</div>
        <input type="hidden" name="task"   value="search" />		
		<input type="hidden" name="option" value="com_search" />
		</form>
	</div>
    <div id="search_results" style="position:absolute; width:<? echo $box_width;?>px; padding: 0px; display:none;overflow:hidden; z-index: 999;">
		<div align="left"></div>
	</div>
</div>

</div>
