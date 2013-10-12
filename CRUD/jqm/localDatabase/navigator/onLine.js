(function() {
	if (navigator.onLine) {
		DOM.onLine.val(1);
		DOM.onLine.slider();
		DOM.onLine.slider('refresh');
		Sync.Upload1();
	} else {
		DOM.onLine.val(0);
		DOM.onLine.slider();
		DOM.onLine.slider('refresh');
	}
})();
