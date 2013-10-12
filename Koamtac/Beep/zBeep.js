var Counter = 0;

$('form[name=myForm]').submit(function() {
	Counter++;
	$('input[name=Counter]').val(Counter);
	$('#beep').text('1');
});
