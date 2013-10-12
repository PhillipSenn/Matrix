var koamtac = (function() {
	// vars go here
	return {
		set: function(name,value) {
			$('body').append("koamtac.set('" + name + "'," + value + ")<br>");
			$('#' + name).val(value);
		},
		get: function(name,index) {
			var result = '';
			var koamtacclass;
			if (name === 'beepon' || name === 'beepoff' || name === 'repeat' || name === 'volume') {
				koamtacclass = document.getElementsByClassName('koamtac-beep');
			} else {
				koamtacclass = document.getElementsByClassName('koamtac-class');
			}
			if (koamtacclass.length === 0) {
				var X = document.getElementsByClassName(name);
				if (X.length) {
					result = X.item(0).textContent;
				}
			} else if (koamtacclass.length > index) {
				var X = koamtacclass.item(index).getElementsByClassName(name);
				if (X.length) {
					result = X.item(0).textContent;
				}
			}
			$('body').append("koamtac.get('" + name + "'," + index + ")=" + result + "<br>");
			return result;
		},
		click: function(name) {
			$('body').append("koamtac.click('" + name + "')<br>");
			$('#' + name).click();
		},
		focus: function(name) {
			$('body').append("koamtac.focus('" + name + "')<br>");
			$('#' + name).focus();
		}
	}
})();
koamtac.set('ItemNo',123);
koamtac.click('koamtac-loadedid');
koamtac.get('koamtac-inputid',0);
