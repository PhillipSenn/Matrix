var messageArray = ["The true heart of California","Tours as diverse as California itself","Explore our world your way"];
var messageIndex = 0;

function deeperFunction() {
	// perform loop
	for (var i = 0; i < 500; i++) {
		// do stuff.
		var foo = i * (Math.random());
		var bar = foo;
		// more exciting code.
	}
}

function simpleFunction() {
	// jump into a deeper function
	deeperFunction();
	// now grab the message and change it.
	var newMessage = messageArray[messageIndex];
	var messageElement = document.getElementById("mainMessage");
	messageElement.innerHTML = newMessage;
	messageIndex++;
	if (messageIndex > messageArray.length) {
		messageIndex = 0;
	}
}

function changeMessage() {
	simpleFunction();
}

window.onload = function() {
	setInterval(changeMessage,4000);
};


