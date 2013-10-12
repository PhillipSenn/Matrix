// Simple Ajax example.

// 1: Create the request 
var myRequest;

// feature check!
if (window.XMLHttpRequest) {  // does it exist? we're in Firefox, Safari etc.
    myRequest = new XMLHttpRequest();
} else if (window.ActiveXObject) { // if not, we're in IE
    myRequest = new ActiveXObject("Microsoft.XMLHTTP");
}

// 2: create an event handler for our request to call back
myRequest.onreadystatechange = function(){
    console.log("We were called!");
    console.log(myRequest.readyState);
    if (myRequest.readyState === 4) {
        var p = document.createElement("p");
        var t = document.createTextNode(myRequest.responseText);
        p.appendChild(t);
        document.getElementById("mainContent").appendChild(p);
    }
};

// open and send it
myRequest.open('GET', 'simple.txt', true);
// any parameters?
myRequest.send(null);

//....