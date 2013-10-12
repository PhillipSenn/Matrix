document.getElementById('stock').addEventListener(
	'message',
	function () {
		var data = event.data.split('\n');
		console.log(data);
		console.log(data[0]);
		console.log(data[1]);
		console.log(data[2]);
	}, 
	false
);
