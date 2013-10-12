;(function($, window, undefined) {
	$.fn.parseFloat = function() {
		return parseFloat(this.val()) || 0;
	};
	console.log($('#myID').parseFloat());
})(jQuery, window);

