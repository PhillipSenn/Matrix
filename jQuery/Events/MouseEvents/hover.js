$('p').hover(
	function (X) {
		log(X);
		PRINT('in');
	},
	function () {
		PRINT('out');
	}
);