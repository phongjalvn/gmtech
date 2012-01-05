window.addEvent("load", function(){	
    $$('.nsp_main_portal_mode4').each(function(module){
		var id = module.getProperty('id');
		var $G = $Gavick[id];
		var current_offset = 0;
		var arts = module.getElements('.nsp_art');
		var headline_size = module.getElement('.nsp_art_headline').getSize().y;
		var headline_titles = module.getElements('.nsp_art_headline');
		var auto_anim = module.hasClass('autoanim');
		var anim_speed = $G['animation_speed'];
		var anim_interval = $G['animation_interval'];
		var animation = false;
		var scrollWrap = module.getElement('.nsp_arts');
		var scroller = new Fx.Scroll(scrollWrap, {duration: anim_speed, wheelStops: false});
		var headlines = new Fx.Style(module.getElement('.nsp_text_wrap'), 'margin-top', {duration: anim_speed, wheelStops: false});
		var dimensions = scrollWrap.getSize();
		var startItem = 0;
		var sizeWrap = scrollWrap.getCoordinates();
		
		module.getElement('.nsp_art').addClass('active');
		module.getElement('.nsp_arts_scroll').setStyle('width', (arts[arts.length-1].getSize().size.x * arts.length) + 2 + "px");
		
		var offset = module.getElement('.nsp_art').getSize().size.x;
		var size = module.getElement('.nsp_arts').getSize().size.x;
		var scrollSize = (arts[arts.length-1].getSize().size.x * arts.length);
		var amountInView = Math.floor(size / offset);
		var totalAmount = module.getElements('.nsp_art').length;
		// reset
		scroller.scrollTo(0,0);
		current_art = amountInView;
		
		if(totalAmount > amountInView) {
		
			if(module.getElement('.nsp_prev')) {
				module.getElement('.nsp_prev').addEvent('click', function() {
					animation = true;
					
					if(current_offset <= 0) {
						current_offset = scrollSize - size;
					} else {
						current_offset -= offset;
					}
                    scroller.scrollTo(current_offset, 0);
				});
			}
			
			if(module.getElement('.nsp_next')) {
				module.getElement('.nsp_next').addEvent('click', function() {
					animation = true;
					
					if(current_offset <= scrollSize - size) {
						current_offset += offset;
					} else {
						current_offset = 0;
					}
					scroller.scrollTo(current_offset, 0);
                    	
				});
			}
			
			if(auto_anim){
				(function(){
					if(!animation) module.getElement('.nsp_next').fireEvent("click");
					else animation = false;
				}).periodical($G['animation_interval'] / 2);
			}
		}
		if(window.ie7) {
			module.getElements('.nspArtHeadline').each(function(headline) {
				headline.setStyle('position', 'static');
				headline.setStyle('margin-top', -headline.getSize().y + "px");
			});
		}
		
	});
});