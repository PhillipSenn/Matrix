(function() {
	var requestAnimationFrame = window.requestAnimationFrame || 
		window.mozRequestAnimationFrame ||
		window.webkitRequestAnimationFrame || 
		window.msRequestAnimationFrame;
	window.requestAnimationFrame = requestAnimationFrame;
})();

var start = window.mozAnimationStartTime;  // Only supported in Firefox. Other browsers can use something like Date.now().

function step(timestamp) {
	var progress = timestamp - start;
	d.style.left = Math.min(progress/10, 200) + "px";
	if (progress < 2000) {
	requestAnimationFrame(step);
	}
}

requestAnimationFrame(step);