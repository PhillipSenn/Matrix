var wdb = {};
wdb.db = openDatabaseSync('test', '1.0', 'DB test', 1024);

doQuery("CREATE TABLE IF NOT EXISTS test(abc INTEGER PRIMARY KEY);");
doQuery("DELETE FROM test"); // optional

for (var i = 0; i < 4; i++) {
    doQuery("INSERT INTO test(abc) VALUES( " + i + " );");
    postMessage({ message: "Inserted " + i.toString(), complete: false });
}

var summary= doQuery("SELECT COUNT(*) AS Total FROM test;");
postMessage({ message: "Found " + summary.item(0).Total.toString() + " rows", complete: true });

function doQuery(sql) {
    wdb.db.transaction(function (tx) {
    rs = tx.executeSql(sql, []);
    });
    return rs.rows;
}