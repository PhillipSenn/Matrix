var obj = {};
obj.start = function(myEvent,myUI) {
	myUI.item.data('index',myUI.item.index());
};

obj.stop = function(myEvent,myUI) {
	var DragStart = parseInt(myUI.item.data('index'),10);
	var DropStop = myUI.item.index();
	var startIndex = Math.min(DragStart,DropStop);
	var stopIndex = Math.max(DragStart,DropStop);
	PRINT(startIndex);
	PRINT(stopIndex);	
};

$('#sortable').sortable(obj);
$('#sortable').disableSelection();