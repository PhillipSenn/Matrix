$(function() {
	PRINT('The document has loaded');
});

jQuery.getScript("myplugin.js", function() { 
	PRINT('My plugin has loaded.');
	jQuery.holdReady(false); 
});