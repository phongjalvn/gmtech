/**
 * @version 0.4.8
 * @package k2fields
 * @author Gobezu Sewu <info@jproven.com>
 * @copyright Copyright (c) 2010 jproven.com
 * @license GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

var k2fields = new Class({
        options: {
                dateFormat: '%Y-%m-%d %H:%M:%S',
                maxFieldLength: 500,
                listItemSeparator: '',
                listConditionSeparator: '',
                fieldOptionSeparator: '',
                fieldSeparator: '',
                maxListItem: 10,
                defaultFieldName: 'Field',
                nonsaveableValues: null,
                userAddedValuePrefix:'useradded:'
        },
        fields: new Array(),
        conditions: [],
        fieldsOptions: [],
        validator: null,
        calls: 0,
        blockForm: false,

        isFormValid: function() {
                if (!this.blockForm) return true;

                if (this.validator._isFormValid()) {
                        return true;
                }

                alert('Incomplete form.');
        
                return false;
        },

        initialize: function(options) {
                this.setOptions(options);

                window.addEvent('domready', function(){
                        var js;

                        $$('a.toolbar').each(function(a) {
                                js = a.getProperty('onclick');
                                if (js) {
                                        js = js.replace('javascript:', '');
                                        a.setProperty('onclick', 'javascript:if(k2fs.isFormValid()){'+js+'}');
                                }
                        });

                        $('catid').addEvent('change', function(){
                                var tmer = (function () {
                                        if (!$('extrafields-plch')) {
                                                $clear(tmer);
                                                this.init();
                                        }
                                }.bind(this)).periodical(50);
                        }.bind(this));

                        this.init();
                }.bind(this));


        },
    
        init: function() {
                (new Element('span', {
                        'id':'extrafields-plch',
                        'style':{
                                'display':'none'
                        }
                })).inject($('extraFieldsContainer'));
        
                if (!$('extraFields')) return;

                var options;

                $('extraFields').getElements('[name^=K2ExtraField_]').each(function(proxyField) {
                        options = this.parseFieldOptions(proxyField.getParent().getPrevious().innerHTML);

                        if (options) {
                                this.fieldsOptions[proxyField.getProperty('name')] = options;

                                if (proxyField.nodeName.toLowerCase() == 'select') {
                                        this.createSelect(proxyField);
                                } else {
                                        if (!this.validator) {
                                                this.validator = new fValidator($E('form[name=adminForm]'));
                                        }

                                        this.create(proxyField);
                                }
                        }
                }.bind(this));

                this.deleteNonSaveables();
        },

        createSelect: function (field) {
                if (!this.getOpt(field, 'editable')) return;

                // If user went on to choosing an already existing value (after having entered a new value)
                // lets get rid of the new value
                field.addEvent('change', function (e) {
                        var tgt = this._tgt(e);
                        var value = tgt.getParent().getElement('input[type=text]').getProperty('value');

                        if (value != '' && tgt.getProperty('value') != value) {
                                var opt = tgt.getElement('option[value='+this.options.userAddedValuePrefix+value+']');

                                if (opt) opt.remove();
                        }
                }.bind(this));

                this.changeName(field, this.getOpt(field, 'name'));

                var id = this.generateId(field);
                var btn = new Element('input', {
                        'type':'button',
                        'events':{
                                'click':function(e) {
                                        this.selectAddOption(this._tgt(e));
                                }.bind(this)
                                },
                        'value':'Add option',
                        'id':id
                });
                btn.inject(field.getParent());
        },

        selectAddOption: function(btn) {
                var div = new Element('div');
                var id = this.generateId(this.getProxyFieldId(btn));
                var m = /(\d+)$/.exec(id);

                if (parseInt(m[1]) > 1) return;

                var fld = new Element('input',
                {
                        'id':id,
                        'type':'text',
                        'events':
                        {
                                'change':function(e) {
                                        this.selectDoAddOption(this._tgt(e));
                                }.bind(this)
                        }
                });

                fld.inject(div);
                div.inject(btn.getParent());
        },

        selectDoAddOption: function(addFieldId) {
                var sel = $(this.getProxyFieldId(addFieldId));
                var value = $(addFieldId).getProperty('value');
                var exists = false;

                sel.getElements('option').each (function(el) {
                        if (el.innerHTML.toLowerCase().trim() == value.toLowerCase().trim()
                                || el.innerHTML.toLowerCase().trim() == this.options.userAddedValuePrefix+value.toLowerCase().trim()) {
                                el.setProperty('selected', 'selected');
                                exists = true;
                        }
                }.bind(this));

                if (!exists) {
                        var opt = sel.getElement('option[value^='+this.options.userAddedValuePrefix+']');

                        if (opt) {
                                opt.setProperty('value', this.options.userAddedValuePrefix+value).setText(value);
                        } else {
                                opt = new Element('option', {
                                        'selected':'selected',
                                        'value':this.options.userAddedValuePrefix+value
                                        }).appendText(value);
                                opt.inject(sel);
                        }
                }

                return false;
        },

        create: function(proxyField) {
                if (this.chkOpt(proxyField, 'list', 'conditional')) {
                        var condition;

                        if (this.getOpt(proxyField, 'conditions')) {
                                var conditionOpt, conditions = this.getOpt(proxyField, 'conditions').split('%%');

                                this.setOpt(proxyField, 'conditions', conditions);
                                condition = new Element('select');

                                for (var c = 0; c < conditions.length; c++) {
                                        conditionOpt = new Element('option', {
                                                'value':conditions[c]
                                                }).appendText(conditions[c]);
                                        conditionOpt.inject(condition);
                                }
                        } else {
                                condition = new Element('input', {
                                        'type':'text'
                                });
                        }

                        this.conditions[proxyField.getProperty('name')] = condition;
                }

                proxyField.setProperty('id', proxyField.getProperty('name'));

                var list, item;

                list = proxyField.getProperty('value').split(this.options.listItemSeparator);

                for (var i = 0; i < list.length; i++) {
                        item = list[i].split(this.options.listConditionSeparator);
                        this.createField(proxyField, item[0], item[1]);
                }
        },

        setProxyFieldValue: function(k2field) {
                var proxyField = $(this.getProxyFieldId(k2field));
                var tag = 'input';

                if (this.getOpt(proxyField, 'valid') == 'table') {
                        tag = 'textarea';
                }

                var flds = proxyField.getParent().getParent().getNext().getElements('td')[1].getElements(tag+'[valueholder=true]');
                var value = '', condition;

                flds.each(function(k2field) {
                        if (k2field.getProperty('value')) {
                                if (value) {
                                        value += this.options.listItemSeparator;
                                }

                                value += k2field.getProperty('value') + this.options.listConditionSeparator;

                                if (k2field.getProperty('list') == 'conditional') {
                                        if (this.getOpt(proxyField, 'valid') == 'date' || this.getOpt(proxyField, 'valid') == 'datetime') {
                                                condition = k2field.getParent().getParent().getPrevious().getElement('input');
                                        } else {
                                                condition = k2field.getParent().getPrevious().getElement('input') || k2field.getParent().getPrevious().getElement('select');
                                        }
                                        condition = condition.getProperty('value');
                                        value += condition;
                                }
                        }
                }.bind(this));

                proxyField.setProperty('value', value);
        },

        createField: function(proxyField, value, condition) {
                if (this.isExceeded(proxyField)) {
                        return;
                }

                var id = this.generateId(proxyField);
                var k2field;

                if (this.chkOpt(proxyField, 'valid', 'table')) {
                        k2field = new Element('textarea', {
                                'type':'text',
                                'id':id,
                                'value': (value ? value : ''),
                                'list':this.getOpt(proxyField, 'list'),
                                'valueholder':'true',
                                'rows':10,
                                'cols':80
                        });
                } else {
                        k2field = new Element('input', {
                                'type':'text',
                                'id':id,
                                'value': (value ? value : ''),
                                'list':this.getOpt(proxyField, 'list') != undefined ? this.getOpt(proxyField, 'list') : '',
                                'valueholder':'true'
                        });
                }

                if (this.chkOpt(proxyField, 'valid', 'date') || this.chkOpt(proxyField, 'valid', 'datetime')) {
                        this.createDate(proxyField, k2field, condition);
                        return;
                }

                this.place(k2field, proxyField, condition);

                this.wire(k2field);
        },

        createDate: function(proxyField, value, condition) {
                var imgId = value.getProperty('id')+'_img';
                var img = new Element('img', {
                        'src':'templates/system/images/calendar.png',
                        'alt':'calendar',
                        'id':imgId
                });
                var span = new Element('span');

                value.inject(span);
                img.inject(span);

                this.place(span, proxyField, condition);

                Calendar.setup({
                        inputField  : value.getProperty('id'),
                        ifFormat    : this.options.dateFormat,
                        button      : imgId,
                        align       : "Tl",
                        singleClick : true,
                        range       : this.getOpt(proxyField, 'interval'),
                        showsTime   : this.chkOpt(proxyField, 'valid', 'datetime'),
                        date        : proxyField.getProperty('value'),
                        onUpdate    : function(e) {
                                this.setProxyFieldValue(e.params.inputField);
                        }.bind(this)
                });

                value.addEvent('change', function(e) {
                        this.setProxyFieldValue(this._tgt(e));
                }.bind(this));
        },

        place: function(k2field, proxyField, k2fieldCondition) {
                proxyField = $(proxyField);

                var
                        proxyFieldTr = proxyField.getParent().getParent(),
                        container = new Element('div', {'class':'k2fcontainer'}),
                        valueContainer = new Element('span', {'class':'k2fvalue'}),
                        td,
                        isFirst = (proxyFieldTr.getProperty('k2fieldadded') == undefined);

                if (isFirst) {
                        var tr = new Element('tr');

                        proxyFieldTr.setStyle('display', 'none');
                        tr.inject(proxyFieldTr, "after");
                        (new Element('td', {
                                'class':'key',
                                'align':'right'
                        }).setHTML(this.getOpt(proxyField, 'name'))).inject(tr);

                        td = new Element('td');
                        td.inject(tr);
                        proxyFieldTr.setProperty('k2fieldadded', '1');
                } else {
                        td = proxyFieldTr.getNext().getElements('td')[1];
                }

                if (this.getOpt(proxyField, 'list') == 'conditional') {
                        var condition = this.conditions[proxyField.getProperty('id')];

                        condition = condition.clone();

                        if (k2fieldCondition) {
                                if (condition.getTag() == 'select') {
					for (var i = 0, n = condition.options.length; i < n; i++) {
						if (condition.options[i]['value'] == k2fieldCondition) {
							condition.options[i].selected = true;
							break;
						}
					}                                        
                                } else if (condition.getTag() == 'input') {
                                        condition.setProperty('value', k2fieldCondition);
                                }
                        }

                        var conditionContainer = new Element('span', {
                                'class':'k2fcondition'
                        });

                        condition.inject(conditionContainer);
                        conditionContainer.inject(container);

                        condition.addEvent('change', function(e) {
                                var tgt = this._tgt(e);
                                this.setProxyFieldValue(tgt.getParent().getNext().getElement('input'));
                        }.bind(this));
                }

                k2field.inject(valueContainer);
                valueContainer.inject(container);

                if (this.getOpt(proxyField, 'list')) {
                        var fieldId = k2field.getProperty('id');

                        if (this.getOpt(proxyField, 'valid') == 'date' || this.getOpt(proxyField, 'valid') == 'datetime') {
                                fieldId = $ES('input[type=text]', k2field)[0].getProperty('id');
                        }

                        (new Element('input', {
                                'type':     'button',
                                'value':    (isFirst ? 'Add' : 'Remove')+' option',
                                'id':       fieldId+'_btn',
                                'events':   {
                                        'click': isFirst ?
                                        function(e) {
                                                this.addElement(this._tgt(e));
                                        }.bind(this) :
                                        function(e) {
                                                this.removeElement(this._tgt(e));
                                        }.bind(this)
                                }
                        })).inject(container);
                }

                container.inject(td);
        },

        wire: function(k2field) {
                k2field = $(k2field);

                var proxyField = $(this.getProxyFieldId(k2field));

                k2field.addEvent('change', function(e) {
                        this.setProxyFieldValue(this._tgt(e));
                }.bind(this));

                if (this.getOpt(proxyField, 'required')) {
                        this.validator.register(k2field, this.validator.options.required);
                }

                if (this.chkOpt(proxyField, 'valid', 'table')) {
                        return;
                }

                if (this.chkOpt(proxyField, 'valid', 'map')) {
                        return;
                }

                if (!this.chkOpt(proxyField, 'valid', 'exp')) {
                        this.validator.register(k2field, this.validator.options[this.getOpt(proxyField, 'valid')]);
                } else {
                        this.validator.register(k2field, {
                                type:'k2fre',
                                re:this.getOpt(proxyField, ['valid', 'exp']),
                                msg:'Please insert valid value.'
                        });
                }

                if (this.getOpt(proxyField, 'interval')) {
                        var msg, interval = this.getOpt(proxyField, 'interval');

                        if (this.chkOpt(proxyField, 'valid', 'real') || this.chkOpt(proxyField, 'valid', 'integer')) {
                                msg = 'Allowed value is';

                                if (interval[0] != -Infinity) msg += ' higher than or equal to ' + interval[0];
                                if (interval[0] != -Infinity && interval[1] != Infinity) msg += ' and ';
                                if (interval[1] != Infinity) msg += ' less than or equal to ' + interval[1];

                                this.validator.register(k2field, {
                                        'type': 'func',
                                        'func': function(val,lim) {
                                                return val >= lim[0] && val <= lim[1];
                                        },
                                        'arg' : interval,
                                        'msg' : msg
                                });
                        } else if (this.chkOpt(proxyField, 'valid', 'alpha') || this.chkOpt(proxyField, 'valid', 'alphanumeric')) {
                                msg = 'Allowed input can not be';

                                if (interval[0] > 0) msg += ' shorter than ' + interval[0];
                                if (interval[0] > 0 && interval[1] != Infinity) msg += ' and ';
                                if (interval[1] != Infinity) msg += ' longer than ' + interval[1];

                                this.validator.register(k2field, {
                                        'type': 'func',
                                        'func': function(val,lim) {
                                                return val && val.length >= lim[0] && val.length <= lim[1];
                                        },
                                        'arg' : interval,
                                        'msg' : msg
                                });
                        }
                }
        },

        addElement: function(btn) {
                var proxyField = $(this.getProxyFieldId(btn.getProperty('id').replace(/\_btn$/, '')));
                this.createField(proxyField);
        },

        getProxyFieldId: function(k2field) {
                return ($type(k2field) == "string" ? k2field : k2field.getProperty('id')).replace(/_(\d+)$/, '');
        },

        removeElement: function(btn) {
                var k2field = btn.getProperty('id').replace(/\_btn$/, '');
                btn.getParent().empty();
                this.setProxyFieldValue(k2field);
        },

        changeName: function(field, name) {
                (typeof field == "string" ? $(field) : field).getParent().getParent().getElement('td').setHTML(name);
        },

        isExceeded: function(proxyField) {
                var listmax = this.getOpt(proxyField, 'listmax');
                var proxyTr = proxyField.getParent().getParent();

                return (proxyTr.getStyle('display') == 'none') && (proxyTr.getNext().getElements('td')[1].getElements('input[valueholder=true]').length >= listmax);
        },

        getOpt: function(proxyField, optionKey) {
                proxyField = typeof proxyField == 'string' ? proxyField : proxyField.getProperty('name');
                optionKey = typeof optionKey == "string" ? optionKey : (optionKey.length == 1 ? optionKey[0] : optionKey);

                if (typeof optionKey == "string") {
                        return this.fieldsOptions[proxyField][optionKey];
                } else if (optionKey.length == 2) {
                        return this.fieldsOptions[proxyField][optionKey[0]][optionKey[1]];
                }

                return false;
        },

        setOpt: function(proxyField, optionKey, value) {
                proxyField = typeof proxyField == 'string' ? proxyField : proxyField.getProperty('name');
                optionKey = typeof optionKey == "string" ? optionKey : (optionKey.length == 1 ? optionKey[0] : optionKey);

                if (typeof optionKey == "string") {
                        this.fieldsOptions[proxyField][optionKey] = value;
                } else if (optionKey.length == 2) {
                        this.fieldsOptions[proxyField][optionKey[0]][optionKey[1]] = value;
                }
        },

        chkOpt: function(proxyField, optionKey, chkValue) {
                return this.getOpt(proxyField, optionKey) === chkValue;
        },

        parseFieldOptions: function(optStr) {
                if (optStr.indexOf('k2f'+this.options.fieldSeparator) != 0) return false;

                var opts = optStr.split(this.options.fieldSeparator);
                var name = opts[2] ? opts[2] : this.options.defaultFieldName;

                opts = opts[1].split(this.options.fieldOptionSeparator);

                var _opts = {
                        'name':name,
                        'valid':''
                }, opt;

                for (var o = 0; o < opts.length; o++) {
                        opt = opts[o].toLowerCase();
                        opt = opts[o].split('=');

                        if (opt.length == 2) {
                                _opts[opt[0]] = opt[1];
                        } else if (opt.length == 3) {
                                _opts[opt[0]][opt[1]] = opt[2];
                        }
                }

                if (_opts.block == 'true') {
                        this.blockForm = true;
                }

                if (_opts.valid == 'number') {
                        _opts.valid = 'real';
                }

                if (_opts.interval) {
                        _opts.interval = _opts.interval.replace('[', '').replace(']', '').split(',');

                        if (_opts.valid == 'real' || _opts.valid == 'integer') {
                                if (_opts.interval[0] == '-Infinity') {
                                        _opts.interval[0] = -Infinity;
                                } else {
                                        _opts.interval[0] = new Number(_opts.interval[0])+0;
                                }

                                if (_opts.interval[1] == 'Infinity') {
                                        _opts.interval[1] = Infinity;
                                } else {
                                        _opts.interval[1] = new Number(_opts.interval[1])+0;
                                }
                        } else if (_opts.valid == 'date' || _opts.valid == 'datetime') {
                                if (_opts.interval[0] == -1) _opts.interval[0] = 1900;
                                if (_opts.interval[1] == -1) _opts.interval[0] = 2999;

                                _opts.interval[0] = this.parseDateOperator(_opts.interval[0]);
                                _opts.interval[1] = this.parseDateOperator(_opts.interval[1]);
                        } else if (_opts.valid.test(/^alpha/)) {
                                if (_opts.interval[0] == '-1') {
                                        _opts.interval[0] = 0;
                                }

                                if (_opts.interval[1] == '-1') {
                                        _opts.interval[1] = this.options.maxFieldLength;
                                }
                        }
                } else if (_opts.valid == 'date' || _opts.valid == 'datetime') {
                        _opts.interval = [1900, 2999];

                        if (_opts.low) {
                                _opts.interval[0] = this.parseDateOperator(_opts.low);
                        }

                        if (_opts.high) {
                                _opts.interval[1] = this.parseDateOperator(_opts.high);
                        }
                } else if (_opts.valid == 'integer' || _opts.valid == 'real') {
                        _opts.interval = [-Infinity, Infinity];
                } else if (_opts.valid.test(/^alpha/)) {
                        _opts.interval = [0, this.options.maxFieldLength];
                }

                if (typeof _opts.type == "undefined") {
                        _opts.type = 'field';
                }
                if (typeof _opts.valid == "undefined" && _opts.type == 'field') {
                        _opts.valid = {};
                }
                if (typeof _opts.valid.required == "undefined") {
                        _opts.valid.required = false;
                }

                if (typeof _opts.listmax == "undefined") {
                        _opts.listmax = this.options.maxListItem;
                } else {
                        _opts.listmax = parseInt(_opts.listmax);
                }

                return _opts;
        },

        parseDateOperator : function(value) {
                var currentYear = (new Date()).getFullYear();
                var op = value.toString().substr(0,1), delta;

                if (op == "-" || op == "+") {
                        delta = (op == "-" ? -1 : 1) * parseInt(value);
                        value = currentYear + delta;
                }

                return value;
        },

        generateId: function(proxyField) {
                var name = (typeof proxyField == "string" ? $(proxyField) : proxyField).getProperty('name'), id;

                if (typeof this.fields[name] == "undefined") {
                        this.fields[name] = new Array();
                }

                id = name+'_'+this.fields[name].length;

                this.fields[name].push(id);

                return id;
        },

        deleteNonSaveables: function() {
                if (!this.options.nonsaveableValues || this.options.nonsaveableValues.length <= 0) return;

                var id, value;

                for (id in this.options.nonsaveableValues) {
                        for (value in this.options.nonsaveableValues[id]) {
                                $('K2ExtraField_'+id).getElement('option[value='+value+']').remove();
                        }
                }
        },
        _tgt:function(e) {
                return e.target ? e.target : e.srcElement;
        }
});

k2fields.implement(new Options);


/* ************************************************************************************* *\
 * The MIT License
 * Copyright (c) 2007 Fabio Zendhi Nagao - http://zend.lojcomm.com.br
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this
 * software and associated documentation files (the "Software"), to deal in the Software
 * without restriction, including without limitation the rights to use, copy, modify,
 * merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies
 * or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
\* ************************************************************************************* */

var fValidator = new Class({
        cbErr: [],

        options: {
                msgContainerTag: "div",
                msgClass: "fValidator-msg",

                styleNeutral: {
                        "background-color": "#ffc",
                        "border-color": "#cc0"
                },
                styleInvalid: {
                        "background-color": "#fcc",
                        "border-color": "#c00"
                },
                styleValid: {
                        "background-color": "#cfc",
                        "border-color": "#0c0"
                },

                required: {
                        type: "required",
                        re: /[^.*]/,
                        msg: "This field is required."
                },

                alpha: {
                        type: "alpha",
                        re: /^[a-z ._-]+$/i,
                        msg: "This field accepts alphabetic characters only."
                },
                alphastrict: {
                        type: "alpha",
                        re: /^[a-z]+$/i,
                        msg: "This field accepts strict alphabetic characters only."
                },

                alphanum: {
                        type: "alphanum",
                        re: /^[a-z0-9 ._-]+$/i,
                        msg: "This field accepts alphanumeric characters only."
                },
                alphanumstrict: {
                        type: "alphanum",
                        re: /^[a-z0-9]+$/i,
                        msg: "This field accepts strict alphanumeric characters only."
                },

                integer: {
                        type: "integer",
                        re: /^[-+]?\d+$/,
                        msg: "Please enter a valid integer."
                },
                real: {
                        type: "real",
                        re: /^[-+]?\d*\.?\d+$/,
                        msg: "Please enter a valid number."
                },
                date: {
                        type: "date",
                        re: /^((((0[13578])|([13578])|(1[02]))[\/](([1-9])|([0-2][0-9])|(3[01])))|(((0[469])|([469])|(11))[\/](([1-9])|([0-2][0-9])|(30)))|((2|02)[\/](([1-9])|([0-2][0-9]))))[\/]\d{4}$|^\d{4}$/,
                        msg: "Please enter a valid date (mm/dd/yyyy)."
                },
                email: {
                        type: "email",
                        re: /^[a-z0-9._%-]+@[a-z0-9.-]+\.[a-z]{2,4}$/i,
                        msg: "Please enter a valid email."
                },
                phone: {
                        type: "phone",
                        re: /^[\d\s ().-]+$/,
                        msg: "Please enter a valid phone."
                },
                url: {
                        type: "url",
                        re: /^(http|https|ftp)\:\/\/[a-z0-9\-\.]+\.[a-z]{2,3}(:[a-z0-9]*)?\/?([a-z0-9\-\._\?\,\'\/\\\+&amp;%\$#\=~])*$/i,
                        msg: "Please enter a valid url."
                },
                confirm: {
                        type: "confirm",
                        msg: "Confirm Password does not match original Password."
                },

                onValid: Class.empty,
                onInvalid: Class.empty
        },

        initialize: function(form, options) {
                this.form = $(form);
                this.setOptions(options);

                this.fields = this.form.getElements("*[class^=fValidate]");
                this.validations = [];

                this.fields.each(function(element) {
                        if(!this._isChildType(element)) element.setStyles(this.options.styleNeutral);
                        element.setProperty('cbErr', 0);
                        var classes = element.getProperty("class").split(' ');
                        classes.each(function(klass) {
                                if(klass.match(/^fValidate(\[.+\])$/)) {
                                        var aFilters = eval(klass.match(/^fValidate(\[.+\])$/)[1]);
                                        for(var i = 0; i < aFilters.length; i++) {
                                                if(this.options[aFilters[i]]) this.register(element, this.options[aFilters[i]]);
                                                if(aFilters[i].charAt(0) == '=') this.register(element, $extend(this.options.confirm, {
                                                        idField: aFilters[i].substr(1)
                                                        }));
                                        }
                                }
                        }.bind(this));
                }.bind(this));

                this.form.addEvents({
                        "submit": this._onSubmit.bind(this),
                        "reset": this._onReset.bind(this)
                });
        },

        register: function(field, options) {
                field = $(field);
                this.validations.push([field, options]);
                if (!field.getProperty('cbErr')) {
                        field.setProperty('cbErr', 0);
                }

                field.addEvent("blur", function() {
                        this._validate(field, options);
                }.bind(this));
        },

        _isChildType: function(el) {
                var elType = el.type.toLowerCase();
                if((elType == "radio") || (elType == "checkbox")) return true;
                return false;
        },

        _validate: function(field, options) {
                switch(options.type) {
                        case "confirm":
                                if($(options.idField).getValue() == field.getValue()) this._msgRemove(field, options);
                                else this._msgInject(field, options);
                                break;
                        case "func":
                                // added by jproven, 2010
                                if (options.func(field.getValue(), options.arg)) this._msgRemove(field, options);
                                else this._msgInject(field, options);
                                break;
                        default:
                                if(options.re.test(field.getValue())) this._msgRemove(field, options);
                                else this._msgInject(field, options);
                }
        },

        _validateChild: function(child, options) {
                var nlButtonGroup = this.form[child.getProperty("name")];
                var cbCheckeds = 0;
                var isValid = true;
                for(var i = 0; i < nlButtonGroup.length; i++) {
                        if(nlButtonGroup[i].checked) {
                                cbCheckeds++;
                                if(!options.re.test(nlButtonGroup[i].getValue())) {
                                        isValid = false;
                                        break;
                                }
                        }
                }
                if(cbCheckeds == 0 && options.type == "required") isValid = false;
                if(isValid) this._msgRemove(child, options);
                else this._msgInject(child, options);
        },

        _msgInject: function(owner, options) {
                if(!$(owner.getProperty("id") + options.type +"_msg")) {
                        var msgContainer = new Element(this.options.msgContainerTag, {
                                "id": owner.getProperty("id") + options.type +"_msg",
                                "class": this.options.msgClass
                                })
                        .setHTML(options.msg)
                        .setStyle("opacity", 0)
                        .injectAfter(owner)
                        .effect("opacity", {
                                duration: 500,
                                transition: Fx.Transitions.linear
                        }).start(0, 1);
                        owner.setProperty('cbErr', parseInt(owner.getProperty('cbErr'))+1);
                        this._chkStatus(owner, options);
                }
        },

        _msgRemove: function(owner, options, isReset) {
                isReset = isReset || false;
                if($(owner.getProperty("id") + options.type +"_msg")) {
                        var el = $(owner.getProperty("id") + options.type +"_msg");
                        el.effect("opacity", {
                                duration: 500,
                                transition: Fx.Transitions.linear,
                                onComplete: function() {
                                        el.remove()
                                        }
                        }).start(1, 0);
                        if(!isReset) {
                                owner.setProperty('cbErr', parseInt(owner.getProperty('cbErr'))-1);
                                this._chkStatus(owner, options);
                        }
                }
        },

        _chkStatus: function(field, options) {
                if(parseInt(field.getProperty('cbErr')) == 0) {
                        field.effects({
                                duration: 500,
                                transition: Fx.Transitions.linear
                                }).start(this.options.styleValid);
                        this.fireEvent("onValid", [field, options], 50);
                } else {
                        field.effects({
                                duration: 500,
                                transition: Fx.Transitions.linear
                                }).start(this.options.styleInvalid);
                        this.fireEvent("onInvalid", [field, options], 50);
                }
        },

        _isFormValid: function() {
                return this.form.getElements('[cbErr!=0]').length == 0;
        },

        _onSubmit: function(event) {
                event = new Event(event);
                var isValid = true;

                this.validations.each(function(array) {
                        if(this._isChildType(array[0])) this._validateChild(array[0], array[1]);
                        else this._validate(array[0], array[1]);
                        if(array[0].cbErr > 0) isValid = false;
                }.bind(this));

                alert('it was not valid'+isValid);

                if(!isValid) event.stop();
                return isValid;
        },

        _onReset: function() {
                this.validations.each(function(array) {
                        if(!this._isChildType(array[0])) array[0].setStyles(this.options.styleNeutral);
                        array[0].cbErr = 0;
                        this._msgRemove(array[0], array[1], true);
                }.bind(this));
        }
});
fValidator.implement(new Events); // Implements addEvent(type, fn), fireEvent(type, [args], delay) and removeEvent(type, fn)
fValidator.implement(new Options);// Implements setOptions(defaults, options)