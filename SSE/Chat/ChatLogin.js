if (!!window.EventSource) {
} else {
	$('#Save').prop('disabled',true);
	alert("This browser doesn't support EventSource");
}
