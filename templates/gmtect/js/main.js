jQuery.noConflict();
jQuery(document).ready(function($) {
	$('#menutop li').hover(function(){
	    		$('>ul',$(this)).stop(1,1).slideDown();
	 			 },function(){
	 		  $('>ul',$(this)).stop(1,1).hide();
	 	});
 	
 	$('#xs_69 .pane .item:last').addClass('itemlast');
});
function goToByScroll(id){
jQuery('html,body').animate({scrollTop: jQuery("#"+id).offset().top},'slow');
}