var C01 = $.getUrlVar("C01");
var Display01 = '';
var Beep01 = '';

if (C01 === '010-70') {
	Display01 = 'Leather Current';
} else if (C01 === '116-60') {
	Display01 = 'DDS and Pages Current';
} else if (C01 === '226-60') {
	Display01 = 'DDS and Pages Grade Up!';
	Beep01 = 1;
} else if (C01 === '111-11') {
	Display01 = 'Discontinued';
} else if (C01 === '222-22') {
	Display01 = 'Discontinued';
} else {
	Display01 = 'Say what?';
}
