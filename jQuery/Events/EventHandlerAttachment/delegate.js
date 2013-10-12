$('tbody').delegate('td', 'hover', function(){
	$(this).toggleClass('myClass3'); 
});

$('button[name=AddNew]').click(function() {
	var X = '<tr><td>A</td><td>B</td><td>C</td><td>D</td></tr>'
	$('table tbody').append(X);
});

$('tbody td').hover(function() {
	$(this).toggleClass('alert-error');
});
