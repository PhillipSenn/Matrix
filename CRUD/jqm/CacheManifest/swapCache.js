window.addEventListener('load', myLoad);
function myLoad(e) {
	window.applicationCache.addEventListener('updateready', myUpdateReady);

	function myUpdateReady(myEvent) {
		if (window.applicationCache.status === window.applicationCache.UPDATEREADY) {
			window.applicationCache.swapCache();
			if (confirm('A new version is available. Load it?')) {
				window.location.reload()
			}
		}
	};
};

