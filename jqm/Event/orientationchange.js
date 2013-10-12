$(window).bind('orientationchange',function(myEvent) {
	alert('orientationchange');
	$('body').removeClass('portrait landscape').addClass(myEvent.orientation ? 'landscape' : 'portrait');
});
