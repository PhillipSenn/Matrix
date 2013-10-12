request.SesnDateTime = $('#SesnDateTime');

(function() {
	var local = {};
	local.Today = new Date('4/30/2013');
	local.Year = local.Today.getFullYear();
	if (local.Today.getMonth() > 3 && local.Today.getMonth() < 10) { // Apr=3, May=4, Jun=5, Jul=6, Sep=8, Oct=9, Nov=10
		local.Month = 2; // Mar=2
	} else if (local.Today.getMonth() < 4) { // Jan=0, Feb=1, Mar=2, Apr=3
		local.Month = 8; //  Sep=8
		local.Year = local.Year - 1;
	} else {
		local.Month = 8; //  Sep=8
	}
})();