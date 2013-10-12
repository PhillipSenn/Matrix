document.write('<h1>Hello World!</h1>');

window.addEventListener('load', function(e) {
	window.applicationCache.addEventListener('updateready', function(e) {
		if (window.applicationCache.status == window.applicationCache.UPDATEREADY) {
			window.applicationCache.swapCache();
			if (confirm('Load the new version?')) window.location.reload()
		}
	}, false);
}, false);

$('#Save').click(function() {
	var C01 = $('#C01').val();
	window.localStorage.setItem('C01',C01);
	window.location.replace('001.htm');
});

var C01 = window.localStorage.getItem('C01');
$('#C01').val(C01);
