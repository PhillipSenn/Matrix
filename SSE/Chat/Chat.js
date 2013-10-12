var mySource = new EventSource('ChatSSE.cfm');
mySource.addEventListener('message', 
	function(myEvent) {
		var myData = myEvent.data;
		myData = JSON.parse(myData);
		
		var str = '<tr><td>' + myData.who + '</td><td>' + myData.msg + '</td></tr>';
		$('tbody').append(str);
	},
	false
);

mySource.addEventListener('open', 
	function(myEvent) {
		$('#EventStatus').text('Open');
	}, 
	false
);

mySource.addEventListener('error', 
	function(myEvent){
		if (myEvent.eventPhase == EventSource.CLOSED) {
			$('#EventStatus').text('Closed');
		} else {
			$('#EventStatus').text('Other: ' + myEvent.eventPhase);
		}
	}, 
	false
);
