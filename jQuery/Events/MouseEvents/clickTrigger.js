var updateCountdown = function(seconds) {
	if (seconds === 0) {
		$('input[name=Save]').click();
	} else {
		$countdown.text("Refresh: " + seconds);
		seconds = seconds - 1;
		setTimeout("updateCountdown("+seconds+")", 1000);
	}
}

var $countdown = $('#countdown');
updateCountdown(20);
