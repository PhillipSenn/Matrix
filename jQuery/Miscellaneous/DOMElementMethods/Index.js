$(document).delegate('td','click',function() {
	var row = $(this).parent().index();
	var col = $(this).index();
	PRINT(row);
	PRINT(col);
});