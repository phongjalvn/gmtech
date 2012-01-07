/**
 * JavaScript file for Element: Toggler
 * Adds slide in and out functionality to elements based on an elements value
 *
 * @package			NoNumber! Framework
 * @version			12.1.1
 *
 * @author			Peter van Westen <peter@nonumber.nl>
 * @link			http://www.nonumber.nl
 * @copyright		Copyright © 2011 NoNumber! All Rights Reserved
 * @license			http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

if (typeof( window['nnToggler'] ) == "undefined") {
	window.addEvent('domready', function() {
		// Only do stuff if tabber_nav is found
		if (document.getElements('.nntoggler').length) {
			nnToggler = new nnToggler();
		} else {
			// Try again 2 seconds later, because IE sometimes can't see object immediatly
			(function() {
				if (document.getElements('.nntoggler').length) {
					nnToggler = new nnToggler();
				}
			}).delay(2000);
		}
	});

	var nnToggler = new Class({
		togglers: {}, // holds all the toggle areas
		elements: {}, // holds all the elements with the toggle areas they effect
		divs: null, // holds the div elements

		initialize: function() {
			var self = this;

			this.togglers = document.getElements('.nntoggler');
			if (!this.togglers.length) {
				return;
			}

			this.initTogglers();
		},

		initTogglers: function() {
			var self = this;

			var new_togglers = {};
			var i = 0;

			// make parent tds have no padding
			this.togglers.each(function(toggler) {
				toggler.setStyle('visibility', 'visible');

				if (toggler.getParent().getTag() == 'td') {
					toggler.getParent().setStyle('padding', '0');
				}
				if (toggler.id) {
					i++;
					toggler.elements = {};
					toggler.fx = {};
					toggler.nofx = toggler.hasClass('nntoggler_nofx');
					toggler.mode = ( toggler.hasClass('nntoggler_horizontal') ) ? 'horizontal' : 'vertical';
					toggler.method = ( toggler.hasClass('nntoggler_and') ) ? 'and' : 'or';
					toggler.ids = toggler.id.split('___');
					new_togglers[toggler.id] = toggler;
				}
			});

			this.togglers = new_togglers;

			// add effects
			$each(this.togglers, function(toggler) {
				if (toggler.nofx) {
					toggler.fx.slide = new Fx.Slide(toggler, { 'duration': 1, 'mode': toggler.mode, onComplete: function() { self.completeSlide(toggler); } });
				} else {
					toggler.fx.slide = new Fx.Slide(toggler, { 'duration': 500, 'mode': toggler.mode, onStart: function() { self.startSlide(); }, onComplete: function() { self.completeSlide(toggler); } });
					toggler.fx.fade = new Fx.Styles(toggler, { 'duration': 500 });
				}
			});

			// set elements
			$each(this.togglers, function(toggler) {
				for (var i = 1; i < toggler.ids.length; i++) {
					keyval = toggler.ids[i].split('.');

					if (keyval.length < 2) {
						keyval[1] = 1;
					}
					if (typeof( self.elements[keyval[0]] ) == "undefined") {
						self.elements[keyval[0]] = {};
						self.elements[keyval[0]].togglers = [];
					}

					self.elements[keyval[0]].togglers.include(toggler.id);

					if (typeof( toggler.elements[keyval[0]] ) == "undefined") {
						toggler.elements[keyval[0]] = [];
					}
					toggler.elements[keyval[0]].include(keyval[1]);
				}
			});

			this.setElements();

			// hide togglers that should be
			$each(this.togglers, function(toggler) {
				var show = self.isShow(toggler.id);
				if (!show) {
					toggler.fx.slide.hide();
					if (!toggler.nofx) {
						toggler.setStyle('opacity', 0);
					}
				}
			});

			this.divs = document.getElements('div.col div');
			// set all divs in the form to auto height
			this.autoHeightDivs();
		},

		startSlide: function() {
			this.autoHeightDivs();
		},

		completeSlide: function(toggler) {
			var self = this;

			this.autoHeightDivs();
		},

		autoHeightDivs: function() {
			// set all divs in the form to auto height
			this.divs.each(function(el) {
				if (el.getStyle('height') != '0px'
					&& !el.hasClass('input')
					&& !el.hasClass('nn_hr')
					&& !el.hasClass('textarea_handle')
					// GK elements
					&& el.id.indexOf('gk_') === -1
					&& el.className.indexOf('gk_') === -1
					&& el.className.indexOf('switcher-') === -1
					) {
					el.setStyle('height', 'auto');
				}
			});
		},

		toggle: function(el_name) {
			var self = this;
			if (typeof( this.elements[el_name] ) != "undefined") {
				var el = this.elements[el_name];
				for (var i = 0; i < self.elements[el_name].togglers.length; i++) {
					self.togglebyid(self.elements[el_name].togglers[i]);
				}
			}

		},

		togglebyid: function(id) {
			if (typeof( this.togglers[id] ) == "undefined") {
				return;
			}

			var toggler = this.togglers[id];

			var show = this.isShow(id);

			toggler.fx.slide.stop();
			if (toggler.nofx) {
				if (show) {
					toggler.fx.slide.show();
				} else {
					toggler.fx.slide.hide();
				}
				this.autoHeightDivs();
			} else {
				toggler.fx.fade.stop();
				if (show) {
					toggler.fx.slide.slideIn();
					( function() { toggler.fx.fade.start({ 'opacity': 1 }) } ).delay(250);
				} else {
					toggler.fx.slide.slideOut();
					toggler.fx.fade.start({ 'opacity': 0 });
				}
			}
		},

		isShow: function(id) {
			var toggler = this.togglers[id];

			var show = ( toggler.method == 'and' );

			for (id in toggler.elements) {
				var vals = toggler.elements[id];
				var values = this.get_values(id);
				if (values != null && values.length && ( ( vals == '*' && values != '' ) || nnScripts.in_array(vals, values) )) {
					if (toggler.method == 'or') {
						show = 1;
						break;
					}
				} else {
					if (toggler.method == 'and') {
						show = 0;
						break;
					}
				}
			}

			return show;
		},

		get_values: function(element_name) {
			if (typeof( this.elements[element_name] ) == undefined) {
				return null;
			}

			var element = this.elements[element_name];

			var values = new Array();
			// get value
			if (element.elements) {
				switch (element.type) {
					case 'radio':
					case 'checkbox':
						for (var i = 0; i < element.elements.length; i++) {
							if (element.elements[i].checked) {
								values.push(element.elements[i].value);
							}
						}
						break;
					default:
						if (element.elements.length > 1) {
							for (var i = 0; i < element.elements.length; i++) {
								if (element.elements[i].checked) {
									values.push(element.elements[i].value);
								}
							}
						} else {
							values.push(element.elements[0].value);
						}
						break;
				}
			}
			return values;
		},

		setElements: function() {
			var self = this;
			document.getElementsBySelector('input, select').each(function(el) {
				el.el_name = el.name.replace('[]', '').replace(/(?:params|advancedparams)\[(.*?)\]/g, '\$1');

				if (typeof( self.elements[el.el_name] ) != "undefined") {
					if (typeof( self.elements[el.el_name].elements ) == "undefined") {
						self.elements[el.el_name].elements = [];
					}

					if (typeof( self.elements[el.el_name].type ) == "undefined") {
						if (el.getTag() == 'select') {
							self.elements[el.el_name].type = 'select';
						} else {
							self.elements[el.el_name].type = el.type;
						}
					}
					var func = function(event) { self.toggle(el.el_name); };

					switch (self.elements[el.el_name].type) {
						case 'radio':
						case 'checkbox':
							el.addEvent('click', func);
							el.addEvent('keyup', func);
							break;
						case 'select':
						case 'select-one':
						case 'text':
							el.addEvent('change', func);
							el.addEvent('keyup', func);
							break;
						default:
							el.addEvent('change', func);
							break;
					}

					self.elements[el.el_name].elements.include(el);
				}
			});
		}
	});
}