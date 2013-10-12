function ViewSource() {
	var local = {};
	local.html = $('iframe').contents().find("html").html();
	// local.html = $(local.html).remove('nav').html(); Can't get this to work! Ack!
	local.html = local.html.replace(/\t/g, ''); // replace tab with empty string
	$('pre').text('<html>\r\n' + local.html + '\r\n</html>'); // Add html tag to beginning and end
};

setTimeout(ViewSource,1000);
