// prevent a form from submitting
function preparePage() {
	document.getElementById("mainContent").onclick = function() {
        if ( document.getElementById("mainContent").className == "example") {
             document.getElementById("mainContent").className = "";
        } else {
           document.getElementById("mainContent").className = "example";
        }
	};
}

window.onload =  function() {
	preparePage();
};