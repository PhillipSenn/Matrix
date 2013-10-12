(function() {
	window.Sync = function() {
		var document = window.document;
		var Upload1 = function() {
			if (+DOM.onLine[0].value) {
				dbo.transaction(Upload2);
			}
		};
		var Upload2 = function(myTransaction) {
			var local = {};
			local.sqlite = "SELECT LastModified,strftime('%s',LastModified) A"
				+ " FROM iState"
				// + " WHERE strftime('%s',LastModified) > strftime('%s',LastUploaded)";
			myTransaction.executeSql(
				 local.sqlite
				,[]
				,Upload3
				,window.localDatabaseError
			)
		};
		var Upload3 = function(transaction,webSQLResult) {
			var local = {};
			for (local.index=0;local.index < webSQLResult.rows.length;local.index++) { // forEach?
				local.StateName = webSQLResult.rows.item(local.index).StateName;
				local.StateID = webSQLResult.rows.item(local.index).StateID;
				Upload4(local); // not sure why I need to move this outside of the loop, but js is crazy that way.
				// Something about functions inside of loops.
			}
		};
		var Upload4 = function(form) { // I call it form because that's my convention.  In ColdFusion, I might pass in the form scope, and therefore call it form.
			var local = {};
			local.data = {};
			local.data.method = 'Save';
			// local.dataType = 'json';
			local.data.StateName = form.StateName;
			local.data.StateID = form.StateID;
			local.Promise = $.ajax('State.cfc',local);
			local.Promise.done(Upload5);
			local.Promise.fail(window.ajaxPromiseFail);
		};
		var Upload5 = function(ajaxResult) {
			var local = {};
			local.qry = ajaxResult.QRY.DATA;
			local.StateID = local.qry.STATEID[0]; // Uppercase
			local.Upload6 = Upload6.bind(this,local);
			dbo.transaction(Upload6);
		}
		var Upload6 = function(arg,myTransaction) {
			local.sqlite = "UPDATE iState SET LastUploaded=?1 WHERE StateID=?2"
			local.LastUploaded = new Date();
			myTransaction.executeSql(
				local.sqlite
				,[
					 arg.LastUploaded // 1
					,arg.StateID // 2
				]
				,Upload7
				,window.localDatabaseError
			)
		}
		var Upload7 = function() {
			log('done');
		};
	}
})();
