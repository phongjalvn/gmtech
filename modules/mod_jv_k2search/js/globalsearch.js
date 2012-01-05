function getposOffset(overlay, offsettype)
{
	var totaloffset=(offsettype=="left")? overlay.offsetLeft : overlay.offsetTop;
	var parentEl=overlay.offsetParent;
	while (parentEl!=null)
	{
	totaloffset=(offsettype=="left")? totaloffset+parentEl.offsetLeft : totaloffset+parentEl.offsetTop;
	parentEl=parentEl.offsetParent;
	}
	return totaloffset;
}
function jvisIE6() {
	version=0
	if (navigator.appVersion.indexOf("MSIE")!=-1){
		temp=navigator.appVersion.split("MSIE")
		version=parseFloat(temp[1])
	}
	return (version && (version < 7));
}
function overlay(curobj, subobjstr, opt_position)
{
	if (document.getElementById)
	{
		var subobj=document.getElementById(subobjstr)
		subobj.style.display="block"
		var xpos=getposOffset(curobj, "left")+((typeof opt_position!="undefined" && opt_position.indexOf("right")!=-1)? -(subobj.offsetWidth-curobj.offsetWidth) : 0) 
		var ypos=getposOffset(curobj, "top")+((typeof opt_position!="undefined" && opt_position.indexOf("bottom")!=-1)? curobj.offsetHeight : 0)
		subobj.style.left=xpos+"px"
		subobj.style.top=ypos+"px"
		return false
	}
	else
	return true
}

function overlayclose(subobj)
{
	document.getElementById(subobj).style.display="none"
}

var addImages = function(images) {
	images.each(function(image) {
		var el = new Element('div', {'class': 'preview'});
		var name = new Element('h3').setHTML('').inject(el);
		var ahref = new Element('a', {'href': image.ahref}).setHTML(image.name).inject(name);
		var img = new Element('img', {'src': images_path + "/" +image.src}).inject(name, 'after');
		var desc = new Element('span').setHTML(image.description).inject(img, 'after');	
		el.inject($("search_results"));
	});
	if ($("search_results").innerHTML) $("search_results").setStyle('display','block');
};
var addSpace = function(spaces){
	spaces.each(function(space) {
		var th = new Element('div', {'class': 'space'});
		var title = new Element('h4').setHTML(space.title).inject(th);
		th.inject($("search_results"));
	});
}

var addCate = function(cates) {
	cates.each(function(cate) {
		var el = new Element('div', {'class': 'preview'});
		var name = new Element('h3').setHTML('').inject(el);
		var ahref = new Element('a', {'href': cate.ahref}).setHTML(cate.name).inject(name);
		var img = new Element('img', {'src': images_path1 + "/" +cate.src}).inject(name, 'after');
		var desc = new Element('span').setHTML(cate.description).inject(img, 'after');	
		el.inject($("search_results"));
	});
	if ($("search_results").innerHTML) $("search_results").setStyle('display','block');
};

function showHint(word, category_limit, product_limit) 
{ 	
	if(word==""){
		return document.getElementById('search_results').style.display="none";
	}else{
	document.getElementById('search_k2').innerHTML = '<div class="smatt"><img src="modules/mod_jv_k2search/styles/default/images/loader_icon.gif" /></div>';
	var url="modules/mod_jv_k2search/ajax_search.php?search="+word+'&catlimit='+category_limit+'&prolimit='+product_limit;
	
	}
	var request = new Json.Remote(url, {
		onComplete: function(obj) {
			if (obj.product[0].description.indexOf('Not Found') != -1 && obj.category[0].description.indexOf('Not Found') != -1) {
				document.getElementById('search_results').style.display="block";
				document.getElementById('search_results').innerHTML = '';
				document.getElementById('search_results').innerHTML = '<div class="notfound"><p>No items found, try a full search <a href="index.php?searchword='+word+'&option=com_search" title="Full search">here</a><p></div>';
				if(jvisIE6()) {
					document.getElementById('search_k2').innerHTML = '<div class="smatt"><a id="list_a" href="#" onClick="overlayclose(\'search_results\'); return false" onmouseup="overlayclose(\'list_a\')"><img src="modules/mod_jv_k2search/styles/default/images/close_icon.gif" /></a></div>';
				}else {
					document.getElementById('search_k2').innerHTML = '<div class="smatt"><a id="list_a" href="#" onClick="overlayclose(\'search_results\'); return false" onmouseup="overlayclose(\'list_a\')"><img src="modules/mod_jv_k2search/styles/default/images/close_icon.png" /></a></div>';
				}
				
				return;
			} else if (obj.category[0].description.indexOf('Not Found') == -1 && obj.product[0].description.indexOf('Not Found') != -1) {
				$("search_results").innerHTML = '';
				addSpace(obj.space);
				addCate(obj.category);
				if(jvisIE6()) {
					document.getElementById('search_k2').innerHTML = '<div class="smatt"><a id="list_a" href="#" onClick="overlayclose(\'search_results\'); return false" onmouseup="overlayclose(\'list_a\')"><img src="modules/mod_jv_k2search/styles/default/images/close_icon.gif" /></a></div>';
				} else {
					document.getElementById('search_k2').innerHTML = '<div class="smatt"><a id="list_a" href="#" onClick="overlayclose(\'search_results\'); return false" onmouseup="overlayclose(\'list_a\')"><img src="modules/mod_jv_k2search/styles/default/images/close_icon.png" /></a></div>';
				}
				
			} else {
			$("search_results").innerHTML = '';
			addSpace(obj.items);
			addImages(obj.product);
				if (obj.category[0].description.indexOf('Not Found') == -1) {
				addSpace(obj.space);
				addCate(obj.category);
				}
			document.getElementById('search_k2').innerHTML = '<div class="smatt"><a id="list_a" href="#" onClick="overlayclose(\'search_results\'); return false" onmouseup="overlayclose(\'list_a\')"><img src="modules/mod_jv_k2search/styles/default/images/close_icon.png" /></a></div>';
			}
		}
	}).send();	
}

