var ClickDown = $('#clickdown-wav')[0];

$(document).delegate('a','click',function() {
	ClickDown.play();
});
