var mySource = new EventSource('FusionedSSE.cfm');
mySource.addEventListener('message', 
	function(myEvent) {
		$('#container').append(myEvent.data + '<br>');
	}
);

mySource.addEventListener('open', 
	function(myEvent) {
		$('#container').append('open' + '<br>');
	}, 
	false
);

mySource.addEventListener('error', 
	function(myEvent){
		if (myEvent.eventPhase == EventSource.CLOSED) {
			$('#container').append('close' + '<br>');
		}
	}, 
	false
);
