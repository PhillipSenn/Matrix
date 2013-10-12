// The Power Of Love 
// see: www.cavalieridellaluce.net 
// This is my javascript worker DB thread 
// openDatabaseSync is available only in workers 
// just define a namespace 
var wdb = {} ; 
// open db syncronously 
wdb.db = openDatabaseSync('db-test-cap', '1.0', 'DB test reference', 1024); 
 
// This function perform the various action required by main 
onmessage = function (event) { 
  // DEBUG echoing the requests 
  // postMessage( { id: "debug", description: "ECHO WORKER RECEIVED MESSAGE", data: event.data } ) ; 
 
  id = event.data.id ; 
  if( id == "setupId" ) messageSetupId( event.data ) ; 
  if( id == "getActions" ) messageGetActions( event.data ) ; 
  if( id == "insertRecord" ) messageInsertRecord( event.data ) ; 
} ; 
 
// give the already defined id or create tables and insert the new id  
function messageSetupId( data ) { 
 
  // try to get client Id if exist 
  try { 
    row = giodb_getRecord( "clientIdentify" ) ; 
  } catch( exception ) { 
    postMessage( { id: "log", log: "EXCEPTION in reading clientIdentify:"+exception.message } ) ; 
    postMessage( { id: "log", log: "This is the first run, we need to create tables" } ) ; 
 
    // Let create tables -- this is a tricky function just to clean-up code 
    rs = giodb_execute(   'CREATE TABLE IF NOT EXISTS clientIdentify(clientId INTEGER PRIMARY KEY ASC, description TEXT, added_on DATETIME)'   ) ; 
    postMessage( { id: "log", log: "giodb_execute( created table clientIdentify)" } ) ; 
    rs = giodb_execute(   'CREATE TABLE IF NOT EXISTS clientActions(actionId INTEGER PRIMARY KEY ASC, description TEXT, added_on DATETIME)'   ) ; 
    postMessage( { id: "log", log: "giodb_execute( created table clientActions)" } ) ; 
 
    giodb_insertRecord( "clientIdentify", { clientId: data.newId, description: data.description } ) ; 
 
    row = giodb_getRecord( "clientIdentify" ) ; 
  } 
 
  // give back the result clientId 
  postMessage( { id: "clientId", clientId: row.clientId, record: row } ) ; 
} 
 
// get the list of previous action and insert a new one 
function messageGetActions( data ) { 
  rows = giodb_getRecords( "clientActions" ) ; 
 
  var rowOutput = "ACTIONS:\n"; 
  for (var i=0; i < rows.length; i++) { 
    it = rows.item(i) ; 
    rowOutput += "id: " + it.actionId + ", added_on: " + it.added_on + ", description: " + it.description +"\n" ; 
  } 
  if( i ) { 
    newid = it.actionId + 1 ; 
  } else { 
    newid = 100 ; 
    it = undefined ; 
  } 
  giodb_insertRecord( "clientActions", { actionId: newid, description: "This is an action test: "+newid } ) ; 
 
  postMessage( { id: "clientActionList", result: rowOutput, last_it: it, rows: rs.rows } ) ; 
} 
function messageInsertRecord( data ) { 
  giodb_insertRecord( data.table, data.record ) ; 
} 
 
// That's my way to insert record 
function giodb_insertRecord( table, recordObj ) { 
  var names = "" ; 
  var values = [] ; 
  var quest = "" ; 
 
  for( var item in recordObj ) { 
    names = names + ", " + item ; 
    quest = quest + ",?" ; 
    values.push( recordObj[item] ) ; 
  } 
 
  var sql = "INSERT INTO "+table+" ( "+names.substring(2)+" ) VALUES ( "+quest.substring(1)+" )" ; 
  //postMessage( { id: "debug", result: sql, val: values } ) ; 
 
  try { 
    wdb.db.transaction(function(tx) { 
      rs = tx.executeSql(   sql, values   ) ; 
    }) ; 
  } catch( exception ) { 
    postMessage( { id: "warning", description: "Exception in giodb_insertRecord():", exception: exception, sql: sql, val: values, table: table, record: recordObj } ) ; 
  } 
} 
// That's my way to get a record 
function giodb_getRecord( table, where ) { 
  var sql = "" ; 
  if(   typeof(where) != 'undefined'   ) { 
    var names = "" ; 
    var values = [] ; 
 
    for( var item in recordObj ) { 
      names = names + " && " + item + " = ?"; 
      values.push( recordObj[item] ) ; 
    } 
 
    sql = "SELECT * FROM "+table+" WHERE "+names.substring(4) ; 
  } else { 
    sql = "SELECT * FROM "+table ; 
  } 
  //postMessage( { id: "debug", result: sql, val: values } ) ; 
 
  wdb.db.transaction(function(tx) { 
    rs = tx.executeSql(   sql, values   ) ; 
  }) ; 
 
  return rs.rows.item(0) ; 
} 
// That's my way to get many records 
function giodb_getRecords( table, where ) { 
  var sql = "" ; 
  if(   typeof(where) != 'undefined'   ) { 
    var names = "" ; 
    var values = [] ; 
 
    for( var item in recordObj ) { 
      names = names + " && " + item + " = ?"; 
      values.push( recordObj[item] ) ; 
    } 
 
    sql = "SELECT * FROM "+table+" WHERE "+names.substring(4) ; 
  } else { 
    sql = "SELECT * FROM "+table ; 
  } 
  //postMessage( { id: "debug", result: sql, val: values } ) ; 
 
  wdb.db.transaction(function(tx) { 
    rs = tx.executeSql(   sql, values   ) ; 
  }) ; 
 
  return rs.rows ; 
} 
// That's my way to get many records 
function giodb_execute( query ) { 
  wdb.db.transaction(function(tx) { 
    rs = tx.executeSql(   query, []   ) ; 
  }) ; 
 
  return rs ; 
}