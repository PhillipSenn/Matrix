var myWorker = new Worker("Worker.js");
myWorker.onmessage = function(myEvent){
	$('body').append(myEvent.data);
};
myWorker.postMessage("start");