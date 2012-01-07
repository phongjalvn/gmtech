jQuery.noConflict();
jQuery(document).ready(function($) {
	$('#menutop li').hover(function(){
	    		$('>ul',$(this)).stop(1,1).slideDown();
	 			 },function(){
	 		  $('>ul',$(this)).stop(1,1).hide();
	 	});
 	
 	$('#xs_69 .pane .item:last').addClass('itemlast');
 	$('.productpage .itemRelated').prepend('<span class="pre"></span>');
 	$('.productpage .itemRelated').append('<span class="next"></span>');
	//$(".productpage .itemRelated").scrollable({circular: true}).autoscroll({ autoplay: false });

});
function goToByScroll(id){
	jQuery('html,body').animate({scrollTop: jQuery("#"+id).offset().top},'slow');
}