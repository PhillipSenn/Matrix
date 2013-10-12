var getKoamTac = function(name,index) {
	return $('.koamtac-' + name,$('.koamtac-class').eq(index)).text();
}
for (var i=0;i<$('#koamtac-classes').text();i++) {
	X = getKoamTac('inputid',i);
	log(X);
}
