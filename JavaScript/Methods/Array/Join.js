var myArr = [1,2,'A','B'];
var X = myArr.join('--');
log(myArr);
log(X);
log(myArr.join()); // default is a comma.
var result = $('#mySelect option').map(function(index,domElement) {
	return this.value;
});
log(result);
log(result.get());
log(result.get().join(','));


