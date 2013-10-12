var wdb = {};
wdb.db = openDatabaseSync('test', '1.0', 'DB test', 1024);

var summary= doQuery("SELECT COUNT(*) AS Total FROM test;");
postMessage({ message: "Found " + summary.item(0).Total.toString() + " rows", complete: true });

function doQuery(sql) {
    wdb.db.transaction(function (tx) {
    rs = tx.executeSql(sql, []);
    });
    return rs.rows;
}