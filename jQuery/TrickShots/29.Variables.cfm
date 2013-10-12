$('body').append('<h1>6</h1>');
var request = {};
request.dom = {};

request.dom.ball = $('<div id="ball"></div>').appendTo('body');

(function() {
	var Variables = {};
	Variables.TouchStarted = false;

	// Listen for mouse and touch events
	request.dom.ball.on('mousedown touchstart',myTouchStart);
	function myTouchStart(myEvent){
		
		Variables.TouchStarted = true;
		Variables.startPosition = {};
		Variables.elementPosition = {};
		myEvent.preventDefault();
		
		// Normalizing the touch event object
		myEvent = (myEvent.originalEvent.touches) ? myEvent.originalEvent.touches[0] : myEvent;
		
		// Recording current positions
		Variables.startPosition.x = myEvent.pageX;
		Variables.startPosition.y = myEvent.pageY;
		Variables.elementPosition.x = request.dom.ball.offset().left;
		Variables.elementPosition.y = request.dom.ball.offset().top;
		
	};

	// These event listeners will be removed later
	request.dom.ball.on('mousemove.myNameSpace touchmove.myNameSpace',myTouchMove);
	function myTouchMove(myEvent) {
		var local = {};
		
		if (Variables.TouchStarted) {
			myEvent = (myEvent.originalEvent.touches) ? myEvent.originalEvent.touches[0] : myEvent;
			local.top = Variables.elementPosition.y + myEvent.pageY - Variables.startPosition.y;
			local.left = Variables.elementPosition.x + myEvent.pageX - Variables.startPosition.x;
			request.dom.ball.css(local);
		}
	};
	
	request.dom.ball.on('mouseup touchend',myTouchEnd);
	
	function myTouchEnd(){
		// Removing the heavy *move listeners
		request.dom.ball.off('.myNameSpace');
		// Variables.TouchStarted = false;
	};
})();
