$('#myID').selectable({
	stop: function() {
		var result = $( '#select-result' ).empty();
		$('.ui-selected',this).each(function() {
			var X = $('#myID li').index(this);
			result.append(' #' + (X+1));
		});
	}
});