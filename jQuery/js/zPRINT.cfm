(function($) {
	var PrintTable = $('#Print table');
	var elementcount = 0;
	var printcount = 0;
	
	var DisplayElement = function(Element,index) {
		elementcount += 1;
	
		var result = '';
		var ElementClass;
		var myHtml = Element.outerHTML;
		if (typeof myHtml === 'undefined') { // Firefox
			try {
				myHtml = $('<div>').append($(Element).clone()).html(); // todo separate this back out.  If ShowIndex, then show index.
				result = '<tr><td>&nbsp;</td><td>["' + index + '"]</td>' 
				+ '<td><a href="JavaScript:;" data-elementcount="Table' + elementcount + '">' + myHtml.replace(/</g,'&lt;') + '</a>';
				ElementClass = 'DOMElement';
			} catch(e) {
				result = '<tr><td>&nbsp;</td><td colspan="2">';
				ElementClass = 'Object';
			}
		} else {
			myHtml = $('<div>').append($(Element).clone()).html(); // todo separate this back out.  If ShowIndex, then show index.
			result = '<tr><td>&nbsp;</td><td>["' + index + '"]</td>' 
			+ '<td><a href="JavaScript:;" data-elementcount="Table' + elementcount + '">' + myHtml.replace(/</g,'&lt;') + '</a>';
			ElementClass = 'DOMElement';
		}
		var myTable = '<table id="Table' + elementcount + '" class="border thSort ' + ElementClass + '">'
			+ '<thead>'
			+ '<tr><th>Own</th><th>'
			+ '<div class="floatleft">Property</div>'
			+ '<div class="floatright ui-state-default ui-corner-all">'
			+ '<span class="ui-icon ui-icon-circle-triangle-n"></span>'
			+ '</div>'
			+ '</th><th>Type</th><th>Value</th></tr>'
			+ '</thead>';
		var value;
		var type;
		var arr = [];
		for (var prop in Element) {
			try {
				type = typeof Element[prop];
			} catch(e) {
				type = 'unknown'
			}
			if (type === 'number') {
				value = Element[prop]
			} else if (type === 'string') {
				value = Element[prop]
			} else if (type === 'boolean') {
				if (Element[prop]) {
					value = 'true'
				} else {
					value = 'false'
				}
			} else if (type === 'object') {
				value = 'object'
			} else if (type === 'function') {
				value = 'method'
			} else if (type === 'unknown') {
				value = 'unknown'
			} else if (type === 'undefined') {
				value = 'undefined'
			} else {
				value = type + ' is a new type';
			}
			arr.push({
				hasOwnSort:Element.hasOwnProperty(prop) ? 'A' : 'Z',
				hasOwnName:Element.hasOwnProperty(prop) ? 'true' : 'false',
				prop:prop,
				type:type,
				value:value,
			});
		}
		arr = arr.sort(function(a, b) { 
			return (a.hasOwnSort + a.prop) > (b.hasOwnSort + b.prop) ? 1 : (a.hasOwnSort + a.prop) < (b.hasOwnSort + b.prop) ? -1 : 0; 
		});
		for (var i=0,ii=arr.length;i<ii;i++) {
			myTable += '<tr><td>' + arr[i].hasOwnName + '</td><td>' + arr[i].prop + '</td><td>' + arr[i].type + '</td><td>' + arr[i].value + '</td></tr>';
		}
		result += myTable + '</table>';
		result += '</td></tr>';
		return result;
	};
	
window.PRINT = function(obj) {
		if(this.console) {
			console.log(obj);
		}
		var prop;
		var propType;
		var propValue;
		var arr = [];
		printcount += 1;
		var List = '<tr><td>' + printcount + '</td>';
		var typeObj = $.type(obj);
		if (typeObj === 'number' || typeObj === 'boolean' || typeObj === 'undefined') {
			List += '<td colspan="2">' + obj + '</td></tr>'
		} else if (typeObj === 'date') {
			List += '<td colspan="2">' + obj + '</td></tr>'; // Todo: separate these fields.
		} else if (typeObj === 'string') {
			List += '<td colspan="2">' + obj.replace(/</g,'&lt;') + '</td></tr>';
		} else if (typeObj === 'array') {
			List += '<td colspan="2">Array</td></tr>'
			+ '<tr><td>&nbsp;</td><td>["length"]</td><td>' + obj.length + '</td></tr>';
			for(var index in obj) {
				if ($.type(obj[index]) === 'object') {
					List += DisplayElement(obj[index],index);
				} else {
					List += '<tr><td>&nbsp;</td><td>[' + index + ']</td><td>' + obj[index] + '</td></tr>';
				}
			}
		} else if (obj === null) {
			List += '<td colspan="2">null</td></tr>'
		} else if (obj.jquery) {
			elementcount += 1;
			List += '<td colspan="2"><a href="JavaScript:;" data-elementcount="Table' + elementcount + '">jQuery object</a>';
			List += '<table id="Table' + elementcount + '" class="border jQueryObject">';
			for (prop in obj) {
				propValue = obj[prop];
				propType = typeof propValue;
				if (propType === 'number') {
					propSort = 'A';
				} else if (propType === 'string') {
					propSort = 'B';
				} else if (propType === 'object') {
					propSort = 'C';
				} else if (propType === 'function') {
					propSort = 'D';
				}
				arr.push({
					propSort:propSort,
					prop:prop,
					propType:propType,
					propValue:propValue,
				});
			}
			arr = arr.sort(function(a, b) { 
				return (a.propSort + a.prop) > (b.propSort + b.prop) ? 1 : (a.propSort + a.prop) < (b.propSort + b.prop) ? -1 : 0; 
			});
			for (var i=0,ii=arr.length;i<ii;i++) {
				List += '<tr><td>' + arr[i].prop + '</td>';
				if (arr[i].propType === 'function') {
					List += '<td><a href="JavaScript:;">function</a></td>';
					List += '<td><pre hidden>' + arr[i].propValue + '</pre></td>';
				} else {
					List += '<td>' + arr[i].propType + '</td><td>' + arr[i].propValue + '</td>';
				}
				List += '</tr>';
			}
			List += '</table></td></tr>';
			obj.each(function(index) {
				List += DisplayElement(this,index);
			});
		} else {
			List += '<td colspan="2">object</td></tr>'
			List += DisplayElement(obj,0); // TODO: This really isn't 0. Add a ShowIndex flag.
		}
		PrintTable.append(List);
		$('#Print').show();
	};
	
	// This is for expanding objects that are links
	PrintTable.delegate('a','click',function() {
		$('#' + $(this).data("elementcount")).slideToggle('slow');
	});
	
	$(document).delegate('.jQueryObject td a','click',function() {
		$(this).closest('td').next().find('pre').slideToggle('slow');
	});
})(jQuery);
