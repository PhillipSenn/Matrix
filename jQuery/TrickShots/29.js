$('body').append('<h1>5</h1>');
var request = {};
request.dom = {};

request.dom.ball = $('<div id="ball"></div>').appendTo('body');
request.dom.top = $('<div id="top"></div>').appendTo('body');
request.dom.left = $('<div id="left"></div>').appendTo('body');


(function() {
	// Listen for mouse and touch events
	request.dom.ball.on('mousedown touchstart',myTouchStart);
	
	function myTouchStart(myEvent){
		var local = {};
		
		local.startPosition = {};
		local.elementPosition = {};
		myEvent.preventDefault();
		
		// Normalizing the touch event object
		if (myEvent.originalEvent.touches) {
			myEvent = myEvent.originalEvent.touches[0]
		} else {
			myEvent = myEvent;
		}
		
		// Recording current positions
		local.startPosition.x = myEvent.pageX;
		local.startPosition.y = myEvent.pageY;
		local.elementPosition.x = request.dom.ball.offset().left;
		local.elementPosition.y = request.dom.ball.offset().top;
		
		// These event listeners will be removed later
		request.dom.ball.on('mousemove.myNameSpace touchmove.myNameSpace',myTouchMove(local));
	};
	function myTouchMove(Arguments) {
		return function(myEvent) {
			var local = {};
			
			myEvent = (myEvent.originalEvent.touches) ? myEvent.originalEvent.touches[0] : myEvent;
			local.top = Arguments.elementPosition.y + myEvent.pageY - Arguments.startPosition.y;
			request.dom.top.text(local.top);
			local.left = Arguments.elementPosition.x + myEvent.pageX - Arguments.startPosition.x;
			request.dom.left.text(local.left);
			request.dom.ball.css(local);
		}
	};
	
	request.dom.ball.on('mouseup touchend',myTouchEnd);
	
	function myTouchEnd(){
		// Removing the heavy mousemove and touchmove listeners
		request.dom.ball.off('.myNameSpace');
		request.dom.top.text(0);
		request.dom.left.text(0);
		
	};
})();
