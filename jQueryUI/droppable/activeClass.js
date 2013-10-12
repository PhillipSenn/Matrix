$('.tile').draggable();
$('#PlayArea').droppable({
	accept: ".good",
	activeClass: "ui-state-hover",
	drop: function(myEvent, myUI) {
		$(this).addClass('ui-state-highlight');
		myUI.draggable.addClass('ui-state-error').text('Dropped!');
	}
});
