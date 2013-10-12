var appCache = window.applicationCache;

if (appCache.status === appCache.UNCACHED) {
	$('#appCache').append('UNCACHED<br>');
} else if (appCache.status === appCache.IDLE) {
	$('#appCache').append('IDLE<br>');
} else if (appCache.status === appCache.CHECKING) {
	$('#appCache').append('CHECKING<br>');
} else if (appCache.status === appCache.DOWNLOADING) {
	$('#appCache').append('DOWNLOADING<br>');
} else if (appCache.status === appCache.UPDATEREADY) {
	$('#appCache').append('UPDATEREADY<br>');
} else if (appCache.status === appCache.OBSOLETE) {
	$('#appCache').append('OBSOLETE<br>');
} else {
	$('#appCache').append('UNKNOWN<br>');
}

// http://www.html5rocks.com/en/tutorials/appcache/beginner/
// Check if a new cache is available on page load.
window.addEventListener('load', function(e) {

  window.applicationCache.addEventListener('updateready', function(e) {
    if (window.applicationCache.status == window.applicationCache.UPDATEREADY) {
      // Browser downloaded a new app cache.
      // Swap it in and reload the page to get the new hotness.
      window.applicationCache.swapCache();
      if (confirm('A new version of this site is available. Load it?')) {
        window.location.reload();
      }
    } else {
      // Manifest didn't changed. Nothing new to serve.
    }
  }, false);

}, false);

appCache.addEventListener('cached', function(myEvent) {
	$('#appCache-Event').append('Fired after the first cache of the manifest.<br>');
	$('body').append(myEvent);
}, false);

appCache.addEventListener('checking', function(myEvent) {
	$('#appCache-Event').append('Checking for an update. Always the first event fired in the sequence.<br>');
	$('body').append(myEvent);
}, false);

appCache.addEventListener('downloading', function(myEvent) {
	$('#appCache-Event').append('An update was found. The browser is fetching resources.<br>');
	$('body').append(myEvent);
}, false);

appCache.addEventListener('error', function(myEvent) {
	$('#appCache-Event').append('The manifest returns 404 or 410, the download failed, or the manifest changed while the download was in progress.<br>');
	$('body').append(myEvent);
}, false);

appCache.addEventListener('noupdate', function(myEvent) {
	$('#appCache-Event').append('Fired after the first download of the manifest.<br>');
	$('body').append(myEvent);
}, false);

appCache.addEventListener('obsolete', function(myEvent) {
	$('#appCache-Event').append('// Fired if the manifest file returns a 404 or 410. This results in the application cache being deleted.<br>');
	$('body').append(myEvent);
}, false);

appCache.addEventListener('progress', function(myEvent) {
	$('#appCache-Event').append('Fired for each resource listed in the manifest as it is being fetched.<br>');
	$('body').append(myEvent);
}, false);

appCache.addEventListener('updateready', function(myEvent) {
	$('#appCache-Event').append('Fired when the manifest resources have been newly redownloaded.<br>');
	$('body').append(myEvent);
}, false);
