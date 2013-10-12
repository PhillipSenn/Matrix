$('.tile').draggable();
var myObj = {};
myObj.drop = function(myEvent,myUI) {
	$(this).addClass('ui-state-highlight');
	myUI.draggable.addClass('ui-state-error');
};

$('#PlayArea').droppable(myObj);
