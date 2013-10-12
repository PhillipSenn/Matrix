var myRE = /hello/;

var myString = "Does this sentence have the word hello in it?";
if ( myRE.test(myString) ) {
	console.log("Yes");
}

//var myRE = /hello/;

//var myString = "Does this sentence have the word hello in it?";

var myNewString = myString.replace(myRE,"goodbye");
console.log(myString);
console.log(myNewString);