$('input').focus(function() {
	var myProperties = {};
	myProperties.keyCode = 65;
	
	var X = jQuery.Event("keypress", myProperties);
	$(this).trigger(X);
});
