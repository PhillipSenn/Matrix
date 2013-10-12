/*
window.indexedDB = window.indexedDB 
	|| window.webkitIndexedDB 
	|| window.mozIndexedDB;
*/
Println('window.indexedDB:');
Print(window.indexedDB); // Firefox, Chrome, IE10
Println('window.webkitIndexedDB:');
Print(window.webkitIndexedDB); // Chrome
Println('window.mozIndexedDB:');
Print(window.mozIndexedDB); // Firefox
