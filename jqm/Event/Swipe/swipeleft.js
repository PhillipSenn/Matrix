// http://www.coldfusionjedi.com/index.cfm/2011/3/14/Using-swipe-gestures-for-navigation-in-jQuery-Mobile
$('.searchPage').live('swipeleft swiperight',function(myEvent){
	if (myEvent.type === "swipeleft") {
		var prev = $("#prevlink",$.mobile.activePage);
		if (prev.length) {
			var prevurl = $(prev).attr("href");
			$.mobile.changePage(prevurl);
		}
	}
	if (myEvent.type === "swiperight") {
		var next = $("#nextlink",$.mobile.activePage);
		if (next.length) {
			var nexturl = $(next).attr("href");
			$.mobile.changePage(nexturl);
		}
	}
	myEvent.preventDefault();
});