$('#myAccordion').accordion({
	fillSpace: true
});

$('#myAccordionResizer').resizable({
	minHeight: 140,
	resize: function() {
		$('#myAccordion').accordion('resize');
	}
});
