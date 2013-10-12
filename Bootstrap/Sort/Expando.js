$('table.sortable').each(function() {
	var $table = $(this);
	$table.find('th').each(function(column) {
		var $header = $(this);
		var findSortKey;
		if ($header.is('.sort-alpha')) {
			findSortKey = function($cell) {
				return $cell.find('.sort-key').text().toUpperCase() + ' ' + $cell.text().toUpperCase();
				// .sort-key is used here in case they want to sort by last name within the table cell.
				// <td>FirstName <span class="sort-key">LastName</span></td>
			};
		} else if ($header.is('.num')) { // was .sort-numeric, but I use .num for aligning table cells right.
			findSortKey = function($cell) {
				var key = $cell.text().replace(/^[^\d.]*/, ''); // The regular expression used here removes any leading characters other than numbers and decimal points
				key = parseFloat(key);
				return isNaN(key) ? 0 : key; //  if no number can be extracted from the text, NaN (not a number) is returned. This can wreak havoc on .sort().
			};
		} else if ($header.is('.sort-date')) {
			findSortKey = function($cell) {
				return Date.parse($cell.text());
			};
		} else if ($header.is('.sort-monthyear')) { // Example: Apr 2012. Date.parse() requires a fully-specified date, so we prepend the string with 1. This provides a day to complement the month and year, and the combination is then converted into a timestamp, which can be sorted using our normal comparator.
			findSortKey = function($cell) {
				return Date.parse('1 ' + $cell.text());
			};
		}

		if (findSortKey) {
			$header.click(function() {
				var sortDirection = 1;
				if ($header.is('.sorted-asc')) {
					sortDirection = -1;
				}
				var rows = $table.find('tbody > tr').get();
				$.each(rows, function(index, row) {
					var $cell = $(row).children('td').eq(column);
					// $(row).data('sortKey', findSortKey($cell));
					// todo: remove next 1 line
					row.sortKey = findSortKey($cell);
				});
				rows.sort(function(a, b) {
					// if ($(a).data('sortKey') < $(b).data('sortKey')) return -sortDirection;
					// if ($(a).data('sortKey') > $(b).data('sortKey')) return  sortDirection;
					if (a.sortKey < b.sortKey) return -sortDirection;
					if (a.sortKey > b.sortKey) return sortDirection;
					return 0;
				});
				$.each(rows, function(index, row) {
					$table.children('tbody').append(row);
					// $(row).removeData('sortKey');
					row.sortKey = null; 
					// We are doing all of the expensive work and storing the result in a .sortKey property. 
					// This kind of property, attached to a DOM element but not a normal DOM attribute, is called an expando. 
					// This is a convenient place to store the key, since we need one per table row element. 
					// Now, we can examine this attribute within the comparator function, and our sort is markedly faster.
					// We set the expando property to null after we're done with it to clean up after ourselves. 
					// This is not strictly necessary in this case, but is a good habit to establish because expando properties left lying around can be the cause of memory leaks. 
					// For more information, see Appendix C.
				});
				$table.find('th').removeClass('sorted-asc')
				.removeClass('sorted-desc');
				if (sortDirection == 1) {
					$header.addClass('sorted-asc');
				} else {
					$header.addClass('sorted-desc');
				}
				$table.find('td').removeClass('sorted')
				.filter(':nth-child(' + (column + 1) + ')')
				.addClass('sorted');
			});
		}
	});
});
