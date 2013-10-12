(function() {
	var document = window.document;
	var local = {};
	
	if ($('#Example').length) {
		local.Example = $('#Example')[0].outerHTML;
		local.Example = $.trim(local.Example);
		local.Example = local.Example.replace(/\t/g, '   ');
		$('#HTML .pre').text(local.Example);
	}
})();