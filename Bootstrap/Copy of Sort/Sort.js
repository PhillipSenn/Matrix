!function($, window, undefined) {
	var document = window.document;
	$('table.sortable .btn-group').find('a:first').on('click',function() {
		var i = $('i',this);
		if (i.hasClass('icon-chevron-up')) {
			i.removeClass('icon-chevron-up').addClass('icon-chevron-down');
		} else if (i.hasClass('icon-chevron-down')) {
			i.removeClass('icon-chevron-down').addClass('icon-chevron-up');
		} else {
			$('.btn-group').each(function() {
				if ($(this).find('.locked').length) {
				} else {
					// Remove the dropdown from the button that's not locked
					$(this).find('.dropdown-toggle').remove();
					$(this).find('.dropdown-menu').remove();
					// Remove the icon from the button that's not locked
					$(this).find('.btn-success').removeClass('btn-success')
						.find('i').remove();
				}
			});
			
			var myName = $.trim($(this).text());
			var otherNames = '';
			$('a.tableHeader').filter('.btn-success').each(function() {
				otherNames += $.trim($(this).text()) + ', ';
			});
			$(this).addClass('btn-success').prepend('<i class="icon-white icon-chevron-up"></i>');
			$(this).closest('.btn-group').append(
				  '<a class="btn btn-success dropdown-toggle" href="JavaScript:;" data-toggle="dropdown">'
				+ '	<span class="caret"></span>'
				+ '</a>'
				+ '<ul class="dropdown-menu">'
				+ '	<li><a class="lock" href="JavaScript:;"><i class="icon-lock"></i> ' + otherNames + myName + '</a></li>' // might be nice to say icon-chevron-up myName icon-lock
				+ '</ul>'
			);
		}
	});
	
	// When they click on the 'lock this column' menu choice, then change the caret dropdown to a btn-success lock icon.
	$('table.sortable').on('click','a.lock',function() {
		var X = $(this).closest('.btn-group').find('.dropdown-toggle').removeAttr('data-toggle');
		$(this).closest('.btn-group').find('.dropdown-toggle').removeClass('dropdown-toggle')
			.html('<i class="icon-white icon-lock"></i>')
			.addClass('locked unlock');
		$(this).closest('.btn-group').find('.dropdown-menu').remove();
	});
	
	// When they click on the btn-succss lock icon, then toggle it back to the caret dropdown.
	$('table.sortable').on('click','a.locked',function() {
		$(this).removeClass('locked').addClass('dropdown-toggle').attr('data-toggle','dropdown');
		$(this).html('<span class="caret"></span>');
		var myName = $(this).closest('.btn-group').find('a:first').text();
		myName = $.trim(myName);
		$(this).closest('.btn-group').append('<ul class="dropdown-menu">'
			+ '	<li><a class="lock" href="JavaScript:;"><i class="icon-lock"></i> ' + myName + '</a></li>'
			+ '</ul>'
		);
	});
}(jQuery, window);


