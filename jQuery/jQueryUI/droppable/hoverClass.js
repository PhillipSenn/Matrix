$( "#draggable" ).draggable();
		$( "#droppable" ).droppable({
			hoverClass: "ui-state-active",
			drop: function( event, ui ) {
				$( this )
					.addClass( "ui-state-highlight" )