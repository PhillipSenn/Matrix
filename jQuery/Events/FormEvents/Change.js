$('input').change(function(myEvent) {
	PRINT(myEvent);
	PRINT(this);
	PRINT($(this).context);
	PRINT($(this).length);
	PRINT($(this));
	PRINT($(this).selector);
});

$('select').change(function(myEvent) {
	PRINT(myEvent);
	PRINT(this);
	PRINT($(this).context);
	PRINT($(this).length);
	PRINT($(this));
	PRINT($(this).selector);
});