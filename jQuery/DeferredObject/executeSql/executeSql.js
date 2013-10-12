var sqlProviderBase = {
	_executeSql: function (sql, parms) {
		parms = parms || [];
		var def = new $.Deferred();
		// TODO: Write your own getDb(), see http://www.html5rocks.com/en/tutorials/webdatabase/todo/
		var db = getDb();
		db.transaction(function (tx) {
			tx.executeSql(
				sql, parms,
				// On Success
				function (itx, results) {
					// Resolve with the results and the transaction.
					def.resolve(results, itx);
				},
				// On Error
				function (etx, err) {
					// Reject with the error and the transaction.
					def.reject(err, etx);
				}
			);
		});
		return def.promise();
	}
};
	
var taskProvider = $.extend({}, sqlProviderBase, {
	getAllTasks: function() {
		return this._executeQuery("select * from Tasks");
	}
});
	
var pageThatGetsTasks = {
	show: function() {
		taskProvider.getAllTasks()
		.then(
			function(tasksResult) {
				for(var i = 0; i < tasksResult.rows.length; i++) {
					var task = tasksResult.rows.item(i);
					// TODO: Do some crazy stuff with the task...
					renderTask(task.Id, task.Description, task.IsComplete);
				}
			}, function(err, etx) {
				alert("Show me your error'd face: ;-[ ");
			}
		);
	}
};
