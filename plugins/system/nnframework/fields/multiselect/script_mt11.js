// no MooTools 1.1 support

if (typeof( window['NNMultiSelect'] ) == "undefined") {
	window.addEvent('domready', function() {
		$$('.nn_multiselect').each(function(multiselect) {
			new NNMultiSelect({'datasrc': multiselect});
		});
	});

	var NNMultiSelect = new Class({
		initialize: function(options) {
			if (options.datasrc.length > 5) {
				var ul = options.datasrc;
				var link = new Element('a', {
					'id': 'toggle_'+ul.id,
					'href': 'javascript://'
				});
				link.addEvent('click', function(el) {
					nnScripts.toggleSelectListSize(ul.id);
				});

				new Element('span', { 'class': 'show' }).setText(nn_texts['maximize']).injectInside(link);
				new Element('span', { 'class': 'hide' }).setText(nn_texts['minimize']).setStyle('display', 'none').injectInside(link);

				link.injectBefore(ul);
				new Element('br').injectAfter(link);
			}
		}

	});
}