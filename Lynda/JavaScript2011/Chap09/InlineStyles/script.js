var currentPos = 0;
var intervalHandle;

function beginAnimate() {
	document.getElementById("join").style.position = "absolute";
	document.getElementById("join").style.left = "0px";
    document.getElementById("join").style.top = "100px";
    // cause the animateBox function to be called
    intervalHandle = setInterval(animateBox,50);
}

function animateBox() {
    // set new position
    currentPos+=5;
    document.getElementById("join").style.left = currentPos + "px";
    // 
    if ( currentPos > 900) {
        // clear interval
        clearInterval(intervalHandle);
        // reset custom inline styles
        document.getElementById("join").style.position = "";
        document.getElementById("join").style.left = "";
        document.getElementById("join").style.top = "";
    }
}

window.onload =  function() {
	setTimeout(beginAnimate,5000);
};

