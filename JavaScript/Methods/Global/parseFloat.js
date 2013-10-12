function VAL(str) {
	var f = parseFloat(str);
	return isNaN(f) ? 0 : f;
}

log("VAL('A1'): " + VAL('A1'));
log("VAL('1A'): " + VAL('1A'));

