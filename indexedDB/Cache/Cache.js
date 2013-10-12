window.addEventListener('load', function(e) {
	window.applicationCache.addEventListener('updateready', function(e) {
		if (window.applicationCache.status == window.applicationCache.UPDATEREADY) {
			window.applicationCache.swapCache();
			if (confirm('A new version is available. Load it?')) {
				window.location.reload()
			}
		}
	}, false);
}, false);

;(function($, window, undefined) {
	$('body').removeAttr('hidden');
})(jQuery, window);