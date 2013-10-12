<!---
http://orlangio.settebello.info/html5.db.sync.html
--->
<html>
<head>
<title>HTML5 Javascript Local DB TEST: Open
Sync (using a worker)</title>
</head>
<body>
<h2>This is a working example of HTML5 Javascript Local DB TEST: OpenDataBaseSync (using a worker)</h2>
<h3>Output of test is:
	<pre><output id="result"></output> 
</pre>
</h3>
<script> 
 
 // The Power Of Love 
  // see: www.cavalieridellaluce.net 
 
  function dumpObject(obj) { 
    return dumpObj( obj, "", 0, 0 ) ; 
  } 
  var MAX_DUMP_DEPTH = 10; 
 
  function dumpObj(obj, name, indent, depth) { 
    if (depth > MAX_DUMP_DEPTH) { 
      return indent + name + ": \n"; 
    } 
    if (typeof obj == "object") { 
      var child = null; 
      var output = indent + name + "\n"; 
      indent += "\t"; 
      for (var item in obj) 
      { 
         try { 
                child = obj[item]; 
         } catch (e) { 
                child = ""; 
         } 
         if (typeof child == "object") { 
                output += dumpObj(child, item, indent, depth + 1); 
         } else { 
                output += indent + item + ": " + child + "\n"; 
         } 
      } 
      return output; 
    } else { 
           return obj; 
    } 
  } 
 
 
  function messageClientId( data ) { 
    clientId = data.clientId ; 
    writeText( "\nClient id is: "+data.clientId+" - description: " + data.record.description ) ; 
  } 
 
  function messageClientActionList( data ) { 
    clientId = data.clientId ; 
    writeText( "\nPreviously Stored Action list:\n"+data.result ) ; 
    writeText( "\nPlease refresh to see more actions...\n" ) ; 
  } 
 
  function messageLog( data ) { 
    writeText( "*** LOG: " + data.log ) ; 
  } 
 
  function messageWarning( data ) { 
    writeText( "*** WARNING: " + dumpObject( data ) ) ; 
  } 
 
  function messageDebug( data ) { 
    writeText( "*** DEBUG: " + dumpObject( data ) ) ; 
  } 
 
  // just append some text in output 
  function writeText( text ) { 
    document.getElementById('result').textContent = document.getElementById('result').textContent + text + "\n" ; 
  } 
 
 
  // MAIN BODY STARTING 
  writeText( "Starting...\n" ) ; 
 
  // Launch my worker 
  var worker = new Worker('db-test-worker.js'); 
  var clientId = 0 ; 
 
  // Detect various events/messages from worker 
  worker.onmessage = function( event ) { 
    id = event.data.id ; 
    if( id == "clientId" ) messageClientId( event.data ) ; 
    if( id == "clientActionList" ) messageClientActionList( event.data ) ; 
    if( id == "log" ) messageLog( event.data ) ; 
    if( id == "warning" ) messageWarning( event.data ) ; 
    if( id == "debug" ) messageDebug( event.data ) ; 
    // Enable DEBUG 
    //writeText( "\nDEBUG::RECEIVED MESSAGE\n" + dumpObject( event.data )+"\n\n" ) ; 
   }; 
 
  writeText("ask worker to setup db and retrieve client Id") ; 
  worker.postMessage(   { id: "setupId", newId: 123, description: "I am here..." }   ) ; 
 
  writeText("ask worker getActions") ; 
  worker.postMessage(   { id: "getActions" }   ) ; 
 
  writeText("Ask worker to insert new recod (777)...") ; 
  writeText("... this will raise an exception after first run for duplicated key") ; 
  worker.postMessage(   { id: "insertRecord", table: "clientActions", record: { actionId: 777, description: 'uaw' } }   ) ; 
</script>
</body>
</html>
