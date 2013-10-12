if (window.Worker) {
	$('h1').text('You are a web worker!');
} else {
	$('h1').text('You are not a web worker!');
}
