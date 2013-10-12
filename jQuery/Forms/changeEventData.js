var A = {};
A.startTime = new Date();

$('input').change(A,function(myEvent) {
   var B = new Date();
	PRINT(A.startTime);
	PRINT(B);
	PRINT(B - A.startTime);
});