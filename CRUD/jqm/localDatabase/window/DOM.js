var DOM = {}; // These are cached DOM elements because they're used more than once.
DOM.StateID    = $('#StateID');
DOM.StateName  = $('#StateName');
DOM.isState    = $('#isState');
DOM.Statehood  = $('#Statehood');
DOM.Population = $('#Population');
DOM.StateAbbr  = $('#StateAbbr');
DOM.DivisionID = $('#DivisionID');
DOM.onLine = $('.onLine');

// The onLine select is on three (3) pages.
$(document).on('change','.onLine',function() {
	DOM.onLine.val(this.value);
	DOM.onLine.slider();
	DOM.onLine.slider('refresh');
	if (+DOM.onLine[0].value) { // DOM.onLine will go away after testing.
		Sync.Upload1();
	}
});
