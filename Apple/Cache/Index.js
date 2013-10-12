window.addEventListener('load', function(e) {
	window.applicationCache.addEventListener('updateready', function(e) {
		if (window.applicationCache.status == window.applicationCache.UPDATEREADY) {
			window.applicationCache.swapCache();
			if (confirm('A new version of this site is available. Load it?')) window.location.reload()
		}
	}, false);
}, false);


// XCode says: getKoamTac('inputid',0)
// returns: The text that's inside <div class="koamtac-inputid"></div>, which is inside the first occurance of <div class="koamtac-class"></div>
// index is zero based.
// XCode says: getKoamTac('volume',1)
// returns: The text that's inside <div class="koamtac-volume"></div>, which is inside the second occurance of <div class="koamtac-beep"></div>
var getKoamTac = function(name,index) {
	var result = '';
	var koamtacclass;
	if (name === 'beepon' || name === 'beepoff' || name === 'repeat' || name === 'volume') {
		koamtacclass = document.getElementsByClassName('koamtac-beep');
	} else {
		koamtacclass = document.getElementsByClassName('koamtac-class');
	}
	if (koamtacclass.length === 0) {
		var X = document.getElementsByClassName('koamtac-' + name);
		if (X.length) {
			result = X.item(0).textContent;
		}
	} else if (koamtacclass.length > index) {
		var X = koamtacclass.item(index).getElementsByClassName('koamtac-' + name);
		if (X.length) {
			result = X.item(0).textContent;
		}
	}
	// $('body').append(name + '(' + index + '): ' + result + '<br>');
	return result;
}
// getKoamTac('inputid',0);
// getKoamTac('clickid',0);

$('img').attr('width',document.width - 40);
$(window).load(function() {
	$('img').show();
});
