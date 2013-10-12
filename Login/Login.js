;(function($, window, undefined) {
	$('ol a').each(changeHyperlink());
	
	function changeHyperlink() {
		return function(index, element) {
			$(this).attr('href','/Matrix/Login/LoginAction.cfm?UsrID=' + (index+1));
		}
	};
})(jQuery, window);