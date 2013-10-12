$(document).bind('deviceready', function() {
	window.plugins.barcodeScanner.scan(
		function(result) {
			if (result.cancelled) {
				alert("the user cancelled the scan")
			} else {
				alert("we got a barcode: " + result.text)
			}
		},
		function(result) {
			alert("scanning failed: " + result)
		}
	)
});
