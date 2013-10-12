$('table.sortable').each(function() {
	var $table = $(this);
	$table.find('th').each(function(column) {
		var th = $(this);
		var findSortKey;
		if (!th.find('.btn').length) {
		} else if (th.hasClass('num')) {
			findSortKey = function(td) {
				var key = td.text().replace(/^[^\d.]*/, ''); // The regular expression used here removes any leading characters other than numbers and decimal points
				key = parseFloat(key);
				return isNaN(key) ? 0 : key; //  if no number can be extracted from the text, NaN (not a number) is returned. This can wreak havoc on .sort().
			};
		} else { // Loop through the entire column until you find a cell that isn't a date
			var isDate = true;
			var myDate;
			$table.find('td').filter(':nth-child(' + (column + 1) + ')').each(function() {
				myDate = Date.parse($(this).text()); // Example: 1357016400000
				if (isNaN(myDate)) return;
			});
			if (isNaN(myDate)) { // It has .btn, but it's not .num and it's not a date column, so it must be alpha
				findSortKey = function(td) {
					return td.text().toUpperCase();
				}
			} else { // It's a date column
				findSortKey = function(td) {
					return Date.parse(td.text());
				}
			}
		}

		if (findSortKey) {
			th.click(function() {
				var sortDirection,
					rows = $table.find('tbody > tr').get(),
					thIndex,
					i;
				for (var SortIndex=(mySortArray.length-1); SortIndex >= 0; SortIndex--) {
					i = mySortArray[SortIndex];
					thIndex = $table.find('thead tr th:eq(' + i + ')');
					sortDirection = 1;
					if (thIndex.find('.icon-chevron-up').length) {
						sortDirection = -1;
					}
					$.each(rows, function(index, row) {
						var td = $(row.cells[i]);
						$(row).data('sortKey',findSortKey(td));
					});
					rows.sort(function(a, b) {
						var aKey = $.data(a, 'sortKey'),
							bKey = $.data(b, 'sortKey');
						if (aKey < bKey) return  sortDirection;
						if (aKey > bKey) return -sortDirection;
						return 0;
					});
				}
				$.each(rows, function(index, row) {
					$table.children('tbody').append(row);
					$(row).removeData('sortKey');
				});
				/*
				Remove the sorted class from all cells, then add it to cells that are in the same column we just used for our sort
				$table.find('td')
					.removeClass('sorted')
					.filter(':nth-child(' + (column + 1) + ')')
					.addClass('sorted');
				*/
			});
		}
	});
});
