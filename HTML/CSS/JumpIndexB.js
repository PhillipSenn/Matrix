var jumpIndexBbutton = document.getElementById('jumpIndexB-button'),
	jumpIndexB = document.getElementById('jumpIndexB');
document.addEventListener('click', window.showjumpIndexB , false);
document.addEventListener("keydown", function (e) {
	if (!e) {
		e = window.event;
	}
	
	var key = e.keyCode ? e.keyCode : e.which;
	if (key === 27 && jumpIndexB) {
		jumpIndexBbutton.firstChild.textContent = "jump";
		jumpIndexB.style.display = "none";
	}
	if ((key === 32 || key === 13) && e.target.id === "jumpIndexB-button") {
		window.showjumpIndexB(e);
		e.preventDefault();
		e.stopPropagation();
		e.returnValue = false;
		e.cancelBubble = true;
		return false;
	}
}, true);

function showjumpIndexB(event) {
	if (jumpIndexB.style.display === "block") {
		jumpIndexB.style.display = "none";
		jumpIndexBbutton.firstChild.textContent = "jump";
	} else if (event.target.id === "jumpIndexB-button") {
		jumpIndexB.style.display = "block";
		jumpIndexBbutton.firstChild.textContent = "(ESC to close)";
	}
}
