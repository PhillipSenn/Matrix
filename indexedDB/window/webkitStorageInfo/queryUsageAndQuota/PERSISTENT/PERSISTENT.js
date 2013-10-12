;(function($, window, undefined) {
	var local = {};
	window.webkitStorageInfo.queryUsageAndQuota(
		webkitStorageInfo.PERSISTENT // TEMPORARY or PERSISTENT
		,function(used, remaining) {
			Println('Used quota: ');
			Print(used);
			Println('Remaining quota: ');
			Print(remaining);
		}
		,function(myError) {
			Print(myError);
		} 
	);
})(jQuery, window);// Request storage usage and capacity left
