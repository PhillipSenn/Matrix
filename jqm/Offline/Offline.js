window.addEventListener('offline', function(myEvent) {
	$('#status').text('Offline');
	$('#status').parent().removeClass('ui-btn-active');
}, false);

window.addEventListener('online', function(myEvent) {
	$('#status').text('Yippee Skipee!  We are back online!');
	$('#status').parent().addClass('ui-btn-active');
}, false);


!function($, window, undefined) {	
	window.counter = $('#counter');
	setInterval(function(){
		var i = window.counter.text();
		i = parseInt(i);
		window.counter.text(i+1);
	},1000);
}(jQuery, window);

!function($, window, undefined) {	
	if (navigator.onLine) {
		$('#status').text('Online');
		$('#status').parent().addClass('ui-btn-active');
	} else {
		$('#status').text('Offline');
		$('#status').parent().removeClass('ui-btn-active');
	}
}(jQuery, window);