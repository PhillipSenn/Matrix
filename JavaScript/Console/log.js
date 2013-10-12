window.log = function(){
	if(this.console){
		console.log( Array.prototype.slice.call(arguments) );
	}
};
log('Hello World');
