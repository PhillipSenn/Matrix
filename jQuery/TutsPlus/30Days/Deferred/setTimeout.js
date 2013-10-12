var myVar;
var setVal = function() {
	var deferred = $.Deferred();
	setTimeout(function() {
		myVar = 'my value'
		deferred.resolve();
	},
	2000);
	return deferred.promise();
};

setVal().done(function() {
	console.log('all done: ' + myVar);
});

deferred.reject();
setVal().fail(function() {
	console.log('failed: ' + myVar);
});

setVal().always(function() {
	console.log('always: ' + myVar);
});
