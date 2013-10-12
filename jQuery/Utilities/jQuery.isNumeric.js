var values = [
	'1',
	'-1',
	'+1',
	'1.1',
	'8e5',
	8e5,
	'0xFF',
	'0XFF',
	'0XYZ',
	{},
	NaN,
	undefined,
	'',
	null,
	true,
	Infinity
];
// todo: if isNumeric === isNaN class='err'
var v,myClass;

for( var index in values ) {
	v = values[ index ];
	if ($.isNumeric(v) === isNaN(v)) {
		myClass=' class="myClass3"';
	} else {
		myClass='';
	}
	$( 'table' ).append( '<tr>'
		+ '<td>' + v + '</td>'
		+ '<td' + myClass + '>' + ($.isNumeric( v )?'true':'false') + '</td>'
		+ '<td' + myClass + '>' + (!isNaN( v )?'true':'false') + '</td>'
		+ '<td>' + parseInt(v) + '</td>'
		+ '</tr>');
}