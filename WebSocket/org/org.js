function loadWebSocket() { 
	myWebSocket = new WebSocket('ws://echo.websocket.org');
	myWebSocket.onopen = function(myEvent) { 
		$('body').append('onOpen called<br>');
		log(myEvent);
		myWebSocket.send('WebSocket rocks');
	};
	myWebSocket.onclose = function(myEvent) { 
		log(myEvent);
		$('body').append('Disconnected<br>');
	};
	myWebSocket.onmessage = function(myEvent) { 
		log(myEvent);
		$('body').append('Response: ' + myEvent.data + '<br>');
		myWebSocket.close();
	};
	myWebSocket.onerror = function(myEvent) { 
		log(myEvent);
		$('body').append('Error: ' + myEvent.data + '<br>');
	};
}
window.addEventListener('load', loadWebSocket, false);
