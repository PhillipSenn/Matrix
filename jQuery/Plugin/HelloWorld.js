!function($, window, document, undefined) {
	$.fn.myAjax = function() {
		log(this);
		log(this[0]);
	}
}(jQuery, window, document);

$('p').on('click',function() {
	$(this).myAjax();
});

