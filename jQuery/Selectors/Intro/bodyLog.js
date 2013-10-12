var showObjectsMethodsAndValues = function(Element,level,hasOwnProperty) {
	var result = '';
	var prop;
	var arr = [];
	for (prop in Element) {
		if (Element.hasOwnProperty(prop) == hasOwnProperty) {
			var value='';
			var class='';
			var type = typeof Element[prop];
			if (type === 'number') {
				value = Element[prop]; // class='num'
				class = 'num'
			} else if (type === 'string') {
				value = Element[prop];
			} else if (type === 'boolean') {
				if (Element[prop]) {
					value = 'true'
				} else {
					value = 'false'
				}
			} else if (type === 'object') {
			}
			arr.push({
				prop:prop,
				type:type,
				value:value,
				class:class
			});
		}
	}
	arr = arr.sort(function(a, b) { 
		return a.prop > b.prop ? 1 : a.prop < b.prop ? -1 : 0; 
	});
	for (var i=0,ii=arr.length;i<ii;i++) {
		if (arr[i].type === 'object') {
			result += bodylog(arr[i].prop,arr[i].value,level+1,hasOwnProperty)
		} else {
			result += '<tr class="level' + (level+1) + '">' +
			'<td>level' + (level+1) + '</td>'
			+ '<td>' + hasOwnProperty + '</td>'
			+ '<td>' + arr[i].prop + '</td>'
			+ '<td>'	+ arr[i].type + '</td>'
			+ '<td class="' + arr[i].class + '">' + arr[i].value + '</td>'
			+ '</tr>';
		}
	}
	return result;
};

var bodylog = function(objName,obj,level,hasOwnProperty) {
	var result = '<tr class=level"' + level + '">'
	+ '<td>level' + level + '</td>'
	+ '<td>' + hasOwnProperty + '</td>'
	+ '<td><a href="##">' + objName + '</a></td>'
	+ '<td>object</td>'
	+ '<td>&nbsp;</td>'
	+ '</tr>';
	$(obj).each(function(index,Element) {
		result += showObjectsMethodsAndValues(Element,level,true);
		result += showObjectsMethodsAndValues(Element,level,false);
	});
	return result;
}

var $p = $('p');
var X = bodylog('jQuery',$p,0,'');
$('body').append('<table class="border">' 
+ '<thead>'
+ '<tr><th>Level</th><th>has<br>Own<br>Property</th><th>Topic</th><th>typeof</th><th>Value</th></tr>'
+ '</thead>'
+ X + '</table>');

