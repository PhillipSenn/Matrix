$('div').live('pageshow',function(myEvent,myUI) {
	log('pageshow:');
	log(myUI);
	log(myUI.prevPage);
});

$('div').live('pagehide',function(myEvent,myUI) {
	log('pagehide:');
	log(myUI);
	log(myUI.nextPage);
});
