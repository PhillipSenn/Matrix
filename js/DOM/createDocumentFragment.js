var X = document.createDocumentFragment();
var items = ['one', 'two', 'three'];
var myListItem;

for (var i = 0; items[i]; i++) {
	myListItem = document.createElement('li');
	myListItem.appendChild( document.createTextNode(items[i]) );
	X.appendChild(myListItem);
}

document.getElementById("myUL").appendChild(X);


