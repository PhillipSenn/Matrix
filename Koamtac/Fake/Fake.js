var wav = $('#doink-wav')[0];
var mp3 = $('#ping-mp3')[0];

$('form').submit(function() {
	var C01 = $('input[name=C01]').val();
	var Display01 = '';
	var gradeup = 0;
	var on = 0, off=0, repeat=1, volume='low';
	
	if (C01 === '010-70') {
		Display01 = 'Leather Current';
		on = 100;
	} else if (C01 === '116-60') {
		Display01 = 'DDS and Pages Current';
		on = 100;
	} else if (C01 === '226-60') {
		Display01 = 'DDS and Pages Grade Up!';
		gradeup = 1;
		mp3.play();
	} else if (C01 === '111-11') {
		Display01 = 'Discontinued';
		wav.play();
	} else if (C01 === '222-22') {
		Display01 = 'Discontinued';
		wav.play();
	}

	$('input[name=koamtac]').val(Display01);
	$('input[name=on]').val(on);
	$('input[name=off]').val(off);
	$('input[name=repeat]').val(repeat);
	$('input[name=volume]').val(volume);
	$('input[name=gradeup]').val(gradeup);
});

