var myID = $('#myID')[0];
$.data(myID, "StateInfo", { 
	StateName: "North Carolina",
	Population: 9535483,
	Abbr: "NC"
}); 
PRINT($.data(myID, "StateInfo")); 
PRINT($.data(myID, "StateInfo").Population);