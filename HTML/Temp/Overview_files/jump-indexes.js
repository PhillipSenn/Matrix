var
  jumpIndexAbutton = document.getElementById('jumpIndexA-button'),
  jumpIndexA = document.getElementById('jumpIndexA');
document.addEventListener('click', window.showjumpIndexA , false);
document.addEventListener("keydown", function (e) {
  if (!e) {
    e = window.event;
  }
  var key = e.keyCode ? e.keyCode : e.which;
  if (key === 27 && jumpIndexA) {
    jumpIndexAbutton.firstChild.textContent = "jump";
    jumpIndexA.style.display = "none";
  }
  if ((key === 32 || key === 13) && e.target.id === "jumpIndexA-button") {
    window.showjumpIndexA(e);
    e.preventDefault();
    e.stopPropagation();
    e.returnValue = false;
    e.cancelBubble = true;
    return false;
  }
}, true);
function showjumpIndexA(event) {
  if (jumpIndexA.style.display === "block") {
    jumpIndexA.style.display = "none";
    jumpIndexAbutton.firstChild.textContent = "jump";
  } else if (event.target.id === "jumpIndexA-button") {
    jumpIndexA.style.display = "block";
    jumpIndexAbutton.firstChild.textContent = "(ESC to close)";
  }
}
