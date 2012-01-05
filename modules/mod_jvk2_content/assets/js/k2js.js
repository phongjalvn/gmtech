window.addEvent ('load', function() {
	lis = $E('.jv-k2items-rows');
	if(lis) {
		lis.addClass('jv-k2items-rows-first');
	}
	divs = $$('.jv-k2item-pad');
	if(!divs || divs.length < 2) return;
	var maxh = 0;
	divs.each(function(el, i){
		var ch = el.getCoordinates().height;
		maxh = (maxh < ch) ? ch : maxh;		
	},this);
	divs.each(function(el, i){
		el.setStyle('height', maxh-el.getStyle('padding-top').toInt()-el.getStyle('padding-bottom').toInt());		
	},this);
});