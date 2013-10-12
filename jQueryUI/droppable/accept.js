var myObj = {};
myObj.revert = 'invalid';
$('.tile').draggable(myObj);

myObj = {};
myObj.accept = '#good';
myObj.activeClass = 'ui-state-error'; // Should use ui-state-active
myObj.hoverClass = 'ui-state-hover';
myObj.drop = function( myEvent, myUI) {
	$(this).addClass('ui-state-highlight').find('p').html( myUI.draggable.text() );
}

$('#PlayArea').droppable(myObj);
