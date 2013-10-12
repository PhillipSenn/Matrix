// JavaScript: The Definitive Guide, page 583
jQuery.fn.println = function() {
	// join all the arguments into a space-separated string
	var msg = Array.prototype.join.call(arguments,' ');
	// Loop through each element in the jQuery object
	this.each(function() {
		// For each one, append the string as plain text, then append a <br>
		jQuery(this).append(document.createTextNode(msg)).append('<br>');
	});
	// return the unmodified jQuery object for method chaining
	return this;
};

var PRINT = function(X) {
	$('#PRINT').println(X);
}
