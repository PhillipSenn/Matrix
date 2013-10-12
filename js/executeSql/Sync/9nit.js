var worker;
$(document).ready(function() {
	worker = new Worker('9nitWorker.js');
	worker.onError = function(myError) {
		throw new Error (myError.message + ' (' + myError.filename + ': ' + myError.lineno + ')');
	}
	worker.addEventListener(
		'message', function (e) {
			$("#test").html(new Date().toLocaleTimeString() + " " + e.data.message + "<BR/>" + $("#test").html());
			if (e.data.complete == true) {
				worker.terminate();
			}
		}, false
	);
});

function stop() {
	worker.terminate();
}
