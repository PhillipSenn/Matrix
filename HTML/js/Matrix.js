!function($, window, undefined) {
	var local = {};
	
	local.Source = $('article.hero-unit').html();
	local.Legend = $('#Source legend').text();
	$('#Source').text(local.Source);
	$('#Source').prepend('<legend class="btn btn-info">' + local.Legend + '</legend>');
}(jQuery, window);