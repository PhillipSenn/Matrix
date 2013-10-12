var timer;
var timerCurrent;
var timerFinish;
var timerSeconds;
function drawTimer(percent){
	$('div.timer').html('<div class="percent"></div><div id="slice"'+(percent > 50?' class="gt50"':'')+'><div class="pie"></div>'+(percent > 50?'<div class="pie fill"></div>':'')+'</div>');
	var deg = 360/100*percent;
	$('#slice .pie').css({
		'-moz-transform':'rotate('+deg+'deg)',
		'-webkit-transform':'rotate('+deg+'deg)',
		'-o-transform':'rotate('+deg+'deg)',
		'transform':'rotate('+deg+'deg)'
	});
	$('.percent').html(Math.round(percent)+'%');
}
function stopWatch(){
	var seconds = (timerFinish-(new Date().getTime()))/1000;
	if(seconds <= 0){
		drawTimer(100);
		clearInterval(timer);
		$('input[type=button]#watch').val('Start');
		alert('Finished counting down from '+timerSeconds);
	}else{
		var percent = 100-((seconds/timerSeconds)*100);
		drawTimer(percent);
	}
}
	$(document).ready(function(){
	$('input[type=button]#percent').click(function(e){
		e.preventDefault();
		drawTimer($('input[type=text]#percent').val());
	});
	$('input[type=button]#size').click(function(e){
		e.preventDefault();
		$('.timer').css('font-size',$('input[type=text]#size').val()+'px');
	});
	$('input[type=button]#watch').click(function(e){
		e.preventDefault();
		if($('input[type=button]#watch').val() == 'Start'){
			$('input[type=button]#watch').val('Stop');
			timerSeconds = $('input[type=text]#watch').val();
			timerCurrent = 0;
			timerFinish = new Date().getTime()+(timerSeconds*1000);
			timer = setInterval('stopWatch()',50);
		}else{
			$('input[type=button]#watch').val('Start');
			clearInterval(timer);
		}
	});
	$('input[type=button]#watch').click();
});
