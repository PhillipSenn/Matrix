$('body').append('<h1>Hello World!</h1>');

window.addEventListener('load', function(e) {
	window.applicationCache.addEventListener('updateready', function(e) {
		if (window.applicationCache.status == window.applicationCache.UPDATEREADY) {
			window.applicationCache.swapCache();
			if (confirm('A new version of this site is available. Load it?')) window.location.reload()
		}
	}, false);
}, false);
