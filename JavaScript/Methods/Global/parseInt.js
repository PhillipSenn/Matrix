function INT(str) {
	var i = parseInt(str);
	return isNaN(i) ? 0 : i;
}

log("INT('A1'): " + INT('A1'));
log("INT('1A'): " + INT('1A'));
for (i=1; i<=3; i=i+.1) {
	log('INT(' + i + '): ' + INT(i));
}

