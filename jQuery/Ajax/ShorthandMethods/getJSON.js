$('input[name=flickr]').click(function() {
	$.getJSON("http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?", {
		tags: $(this).val(),
		tagmode: "any",
		format: "json"
	}, function(data) {
		$.each(data.items, function(index,item){
			$("<img />").attr("src", item.media.m).appendTo("#myID");
			if ( index === 2 ) return false;
		});
	});
	return false;
});
