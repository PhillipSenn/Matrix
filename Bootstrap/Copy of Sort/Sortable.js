$('table.sortable').each(function() {
	var $table = $(this);
	$('th', $table).each(function(column) {
		var $header = $(this);
		var findSortKey;
		if ($header.is('.sort-alpha')) {
			findSortKey = function($cell) {
				return $cell.find('.sort-key').text().toUpperCase()
				+ ' ' + $cell.text().toUpperCase();
			};
		} else if ($header.is('.sort-numeric')) {
			findSortKey = function($cell) {
				var key = $cell.text().replace(/^[^\d.]*/, '');
				key = parseFloat(key);
				return isNaN(key) ? 0 : key;
			};
		}
		else if ($header.is('.sort-date')) {
			findSortKey = function($cell) {
				return Date.parse($cell.text());
			};
		}
			 
		if (findSortKey) {
			$header.addClass('clickable').hover(function() {
				$header.addClass('hover');
			}, function() {
				$header.removeClass('hover');
			}).click(function() {
				var sortDirection = 1;
				if ($header.is('.sorted-asc')) {
					sortDirection = -1;
				}
				var rows = $table.find('tbody > tr').get();
				$.each(rows, function(index, row) {
					var $cell = $(row).children('td').eq(column);
					row.sortKey = findSortKey($cell);
				});
				rows.sort(function(a, b) {
					if (a.sortKey < b.sortKey) return -sortDirection;
					if (a.sortKey > b.sortKey) return sortDirection;
					return 0;
				});
				$.each(rows, function(index, row) {
					$table.children('tbody').append(row);
					row.sortKey = null;
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
