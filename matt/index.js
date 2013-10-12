// JavaScript Document
function PhilController($scope){
	
	$scope.myarray = [  'Hello', 'World' ];
	
	$scope.clicker = function(text){
		$scope.myarray.push(text);	
	}
	
}