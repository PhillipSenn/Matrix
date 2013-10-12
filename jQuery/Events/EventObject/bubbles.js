$('td').addClass('pointer');

$('td').click(function(myEvent) {
	PRINT(myEvent.bubbles);
	PRINT(myEvent);
});
