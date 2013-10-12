<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MDN Example - Embedded worker</title>
<script type="text/js-worker">
  // This script WON'T be parsed by JS engines because its mime-type is text/js-worker.
  var myVar = "Hello World!";
  // Rest of your worker code goes here.
</script>
<script type="text/javascript">
  // This script WILL be parsed by JS engines because its mime-type is text/javascript.
  function pageLog (sMsg) {
    // Use a fragment: browser will only render/reflow once.
    var oFragm = document.createDocumentFragment();
    oFragm.appendChild(document.createTextNode(sMsg));
    oFragm.appendChild(document.createElement("br"));
    document.querySelector("#logDisplay").appendChild(oFragm);
  }
</script>
<script type="text/js-worker">
  // This script WON'T be parsed by JS engines because its mime-type is text/js-worker.
  self.onmessage = function (oEvent) {
    self.postMessage(myVar);
  };
  // Rest of your worker code goes here.
</script>
<script type="text/javascript">
  // This script WILL be parsed by JS engines because its mime-type is text/javascript.
 
  // In the past...:
  // blob builder existed
  // ...but now we use Blob...:
  var blob = new Blob(Array.prototype.map.call(document.querySelectorAll("script[type=\"text\/js-worker\"]"), function (oScript) { return oScript.textContent; }),{type: "text/javascript"});
 
  // Creating a new document.worker property containing all our "text/js-worker" scripts.
  document.worker = new Worker(window.URL.createObjectURL(blob));
 
  document.worker.onmessage = function (oEvent) {
    pageLog("Received: " + oEvent.data);
  };
 
  // Start the worker.
  window.onload = function() { document.worker.postMessage(""); };
</script>
</head>
<body><div id="logDisplay"></div></body>
</html>