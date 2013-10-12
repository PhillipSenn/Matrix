var dom = {};
dom.counter = $('#counter');

;(function($, window, undefined) {
	var Variables = {};
	var document = window.document;

	Variables.dbr = window.indexedDB.open('Matrix');
	Variables.dbr.onsuccess = OpenSuccess;
	
	function OpenSuccess(myEvent) {
		Variables.db = myEvent.target.result;
		$('#download').removeAttr('disabled');
	};

	$(document).on('click','#download',Rebuild);
	function Rebuild() {
		var local = {};
		
		local.Promise = download();
		local.Promise.done(PromiseDone);
		local.Promise.fail(PromiseFail);
	}

	function download() {
		var local = {};
		local.data = {};
		local.data.method = 'SelectAll';
		local.dataType = 'json';
		return $.ajax('Word.cfc', local);
	}
	
	function PromiseDone(result) {
		var local = {};

		local.Transaction = Variables.db.transaction(['Word'],'readwrite');
		local.Store = local.Transaction.objectStore('Word');
		debugger;
		for (var i=0; i < result.QRY.ROWCOUNT; i++) {
			local.data = {};
			// local.data.WordID = result.QRY.DATA.WORDID;
			local.data.WordName = result.QRY.DATA.WORDNAME[i];
			/*
			if (result.QRY.DATA.PRONUNCIATION[i] !== result.QRY.DATA.WORDNAME[i]) {
				local.data.Pronunciation = result.QRY.DATA.PRONUNCIATION[i];
			}
			*/
			if (result.QRY.DATA.NOUN[i])   local.data.Noun  = result.QRY.DATA.NOUN[i];
			if (result.QRY.DATA.VERB[i])   local.data.Verb  = result.QRY.DATA.VERB[i];
			if (result.QRY.DATA.ADV[i])    local.data.Adv   = result.QRY.DATA.ADV[i];
			if (result.QRY.DATA.ADJ[i])    local.data.Adj   = result.QRY.DATA.ADJ[i];
			if (result.QRY.DATA.STRONG[i]) local.data.Strong= result.QRY.DATA.STRONG[i];
			if (result.QRY.DATA.WEAK[i])   local.data.Weak  = result.QRY.DATA.WEAK[i];
			// if (result.QRY.DATA.WORDDESC[i]) local.data.WordDesc = result.QRY.DATA.WORDDESC[i];
			local.request = local.Store.add(local.data);
			local.request.onerror = myRequestError;
			dom.counter.text(result.QRY.ROWCOUNT - i - 1);
			$('#Print').append(result.QRY.ROWCOUNT - i - 1 + ': ' + local.data.WordName);
		}
	}

	function PromiseFail(myEvent) {
		debugger;
		log(myEvent);
	};	
	
	function myRequestError(myEvent) {
		debugger;
		log(myEvent);
	}
})(jQuery, window);

