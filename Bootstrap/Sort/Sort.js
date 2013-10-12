// todo: click on qty, then click off qty, then click on the lock icon next to fabric.

var mySortArray = []; // Which columns are to be sorted

!function($, window, undefined) {
	var document = window.document;

	// If you click on the name of the column and it's already the default sort.
	// I know that it's the default because it has .icon-chevron-up, but it's not .btn-success.
	// In that case, toggle the sort order
	$('table.sortable th.btn-group a').on('click',function() {
		var Ascending = $(this).next().find('i.icon-chevron-up');
		if (Ascending.length) { // They've clicked on the column name next to an icon that has a chevron up.
			if (!Ascending.hasClass('btn-success')) { // It's ascending by default, not by the user locking the column.
				Ascending.removeClass('icon-chevron-up').addClass('icon-chevron-down');
			}
		}
		/*
		var Descending = $(this).next().find('i.icon-chevron-down');
		if (Descending.length) { // They've clicked on the column name next to an icon that has a chevron down.
			if (!Descending.hasClass('btn-success')) { // It's descending by default, not by the user locking the column.
				Descending.removeClass('icon-chevron-down').addClass('icon-chevron-up');
			}
		}
		*/
	});
	
	// If you click on the name of the column, it's going to toggle btn-success.
	$('table.sortable th.btn-group a').on('click',function() {
		var myAnchorTag = $(this);
		var myIcon = $(this).next().find('i');
		if (myIcon.length) { // The first anchor tag in each th is the column name.
			if (myAnchorTag.hasClass('btn-success')) { // If it's locked and they click on it, then unlock it.
				myIcon.removeClass('icon-chevron-up icon-chevron-down').addClass('icon-');
			} else if (myIcon.hasClass('icon-chevron-down')) { // It started out ascending by default but now it's descending because they click on the column name.
				myIcon.removeClass('icon-black').addClass('icon-white');
			} else { // It became unlocked and now they're clicking on it again.
				myIcon.removeClass('icon- icon-chevron-down icon-black').addClass('icon-chevron-up icon-white');
			}
			
			$(this).closest('.btn-group').find('.btn').toggleClass('btn-success');
			
			var myColumn = myAnchorTag.closest('th').index();
			var myArrayIndex = $.inArray(myColumn,mySortArray);
			if (myAnchorTag.hasClass('btn-success')) {
				// Add it to the end of mySortArray.
				if (myArrayIndex === -1) {
					mySortArray[mySortArray.length] = myColumn;
				}
			} else {
				// Remove it from mySortArray
				if (myArrayIndex > -1) {
					mySortArray.splice(myArrayIndex,1);
				}
				
			}
			
			// Remove any chevrons that aren't locked.
			$(this).closest('thead').find('th').each(function() {
				if ($(this).find('.btn-success').length) {
				} else {
					$(this).find('.icon-chevron-up').removeClass('icon-chevron-up').addClass('icon-');
				}
			});
		}
	});
	
	// If you click on a chevron it's going to toggle up/down.  clicking icon- defaults to ascending.
	$('table.sortable th.btn-group a').on('click',function() {
		var Ascending = $(this).find('i.icon-chevron-up');
		var Descending = $(this).find('i.icon-chevron-down');
		if (Ascending.length) {
			Ascending.removeClass('icon-black icon-chevron-up').addClass('icon-white icon-chevron-down');
			Ascending.closest('.btn-group').find('.btn').addClass('btn-success');
		} else if (Descending.length) {
			Descending.removeClass('icon-black icon-chevron-down').addClass('icon-white icon-chevron-up');
			Descending.closest('.btn-group').find('.btn').addClass('btn-success');
		} else {
			var myIcon = $(this).find('i.icon-');
			if (myIcon.length) {
				myIcon.removeClass('icon-').addClass('icon-white icon-chevron-up');
				myIcon.closest('.btn-group').find('.btn').toggleClass('btn-success');
			}
		}
	});
}(jQuery, window);

