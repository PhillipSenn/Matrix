$('#2').attr('data-x',20);

$('#3').data('x',30);

var myElement = $('#4')[0];
$.data(myElement,'x',40);

$('*').each(function() {
	if ($(this).data('x')) {
		log(this);
	}
});

$('#remove').on('click',function() {
	$('*').removeData('x');
	log('This should return 0 list items, but still includes data-x="10" and data-x="20".');
	$('*').each(function() {
		if ($(this).data('x')) {
			log($(this).data('x'));
		}
	});
});

$('#removeattr').one('click',function() {
	log('Interestingly, you have to removeAttr first before you removeData, otherwise the data still stays in memory.');
});

$('#removeattr').on('click',function() {
	$('*').removeAttr('data-x');
	$('*').each(function() {
		if ($(this).data('x')) {
			log($(this).data('x'));
		}
	});
});
