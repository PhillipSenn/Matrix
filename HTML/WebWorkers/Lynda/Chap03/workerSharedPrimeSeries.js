/*
    workerSharedPrimeSeries.js by Bill Weinman 
    <http://bw.org/contact/>
    created 2011-11-21

    Copyright (c) 2011 The BearHeart Group, LLC
    This file may be used for personal educational purposes as needed. 
    Use for other purposes is granted provided that this notice is
    retained and any changes made are clearly indicated as such. 
*/

var version = '1.0.5';
var startInt = 1;
var interval = 100; // milliseconds
var mainID = 'Main';
var workers = {};

self.onconnect = connect;

function connect(event) {
    var myPort = event.ports[0];    // get this port value

    myPort.status = Object();
    myPort.status.running = false;
    myPort.onmessage = function(event) { message(event, myPort) };
    myPort.postMessage({ status : myPort.status });
};

function log (port, m) {
    port.postMessage({ log : m });
}

// send worker status to the main process
function sendStatusToMain(myPort) {
    var myStatus = myPort.status;
    if(myPort.id && ( myPort.id == mainID )) return;

    if(workers[mainID]) {
        workers[mainID].postMessage({ workerStatus : { id : myPort.id, running : myStatus.running } });
    }

}

function sendWorkers(myPort) {
    for( var workerID in workers ) {
        if(workerID == mainID) continue;
        myPort.postMessage({ workerStatus : { id : workerID, running : workers[workerID].status.running } });
    }
}

function message(event, myPort) {
    // log(myPort, 'received cmd ' + event.data.cmd);
    var myStatus = myPort.status;
    switch(event.data.cmd) {
        case 'getWorkers':   // return the array of workers
            if(myPort.id != mainID) break;
            sendWorkers(myPort);
            break;
        case 'id':  // ID setter
            if(event.data.id) {
                myPort.id = event.data.id;
                if(!workers[myPort.id]) workers[myPort.id] = myPort; // save the port
                sendStatusToMain(myPort);
            }
            break;
        case 'running':
            if((myStatus.running = event.data.value)) {
                myStatus.timer = setInterval( function() { primeSeries(myPort); }, interval);
            } else {
                clearInterval(myStatus.timer);
            }
            myPort.postMessage({ id : myPort.id, status : myPort.status });
            sendStatusToMain(myPort);
            break;
        case 'status':
            myPort.postMessage({ status : myPort.status });
            sendStatusToMain(myPort);
            return;
    }
}

function primeSeries(myPort) {
    n = myPort.primeValue ? myPort.primeValue : startInt;
    while(true) {
        if(!myPort.status.running) break;
        // return NaN if the number is too big
        if(!is12(n)) {
            myPort.postMessage({error : 'Number too big', primeValue : NaN});
            break;
        }
        if(isPrime(n)) {
            myPort.postMessage({primeValue : n});
            myPort.primeValue = ++n;
            break;
        } else ++n;
    }
}

function isPrime(n) {
    if (n % 1 || n < 2) return false; 
    if (n == leastFactor(n)) return true;
    return false;
}

// The largest reliable integer in Javascript is 12 digits
function is12(n) {
    return n <= 999999999999;
}

// leastFactor(n)
// returns the smallest prime that divides n
function leastFactor(n) {
    if (isNaN(n) || !isFinite(n)) return NaN;
    if (n == 0) return 0;
    if (n % 1 || n * n < 2) return 1;
    if (n % 2 == 0) return 2;
    if (n % 3 == 0) return 3;
    if (n % 5 == 0) return 5;
    var q, m = Math.sqrt(n);
    for (var i = 7; i <= m; i += 30) {
       if ( (q = n / i)==Math.floor(q))      return i;
       if ( (q = n / (i + 4)) == Math.floor(q))  return i + 4;
       if ( (q = n / (i + 6)) == Math.floor(q))  return i + 6;
       if ( (q = n / (i + 10)) == Math.floor(q)) return i + 10;
       if ( (q = n / (i + 12)) == Math.floor(q)) return i + 12;
       if ( (q = n / (i + 16)) == Math.floor(q)) return i + 16;
       if ( (q = n / (i + 22)) == Math.floor(q)) return i + 22;
       if ( (q = n / (i + 24)) == Math.floor(q)) return i + 24;
    }
    return n;
}


