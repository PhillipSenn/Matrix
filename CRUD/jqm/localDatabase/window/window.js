jQuery.noConflict();

window.ajaxPromiseFail = function(A,B,C) {
	$('header').html(B + ': ' + C);
	$('article').html(A.responseText);
};

window.localDatabaseError = function(myTransaction,webSQLResult) {
	$('header').html(webSQLResult.message);
}

if (window.openDatabase) {
	window.dbo = openDatabase('iState', '1.0', 'State Table in local storage', 1024);
} else {
	window.dbo = null; // We will warn the user when they go offline.
}


(function() {
	window.addEventListener("online",  online,  false);
	window.addEventListener("offline", offline, false);
	
	function online(argEvent) {
		DOM.onLine.val(1);
		DOM.onLine.slider();
		DOM.onLine.slider('refresh');
	};
	function offline(argEvent) {
		DOM.onLine.val(0);
		DOM.onLine.slider();
		DOM.onLine.slider('refresh');
	};
})();
