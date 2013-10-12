/*
    workerPrimeSeries.js by Bill Weinman 
    <http://bw.org/contact/>
    created 2011-11-17

    Copyright (c) 2011 The BearHeart Group, LLC
    This file may be used for personal educational purposes as needed. 
    Use for other purposes is granted provided that this notice is
    retained and any changes made are clearly indicated as such. 
*/

var version = '1.0.3';
var startInt = 1;
var interval = 67;  // milliseconds (15 per sec to correlate with LDC video)
var running = 0;    // start in not-running state
var oInt;           // interval timer object
var n = 0;          // global counter

// receive "running" events from parent
self.addEventListener('message', handleMessage, false);

function handleMessage(event) {
    running = event.data;
    if(running) oInt = setInterval( function() {
        n = startInt;
        while(true) {
            if(!running) break;
            // return NaN if the number is too big
            if(!is12(n)) {
                postMessage(NaN);
                break;
            }
            if(isPrime(n)) {
                postMessage(n);
                startInt = ++n;
                break;
            }
            ++n;
        }
    }, interval );
    else if(oInt) {
        clearInterval(oInt);
        oInt = null;
    }
};

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
       if ( (q = n / i)        == Math.floor(q) ) return i;
       if ( (q = n / (i + 4))  == Math.floor(q) ) return i + 4;
       if ( (q = n / (i + 6))  == Math.floor(q) ) return i + 6;
       if ( (q = n / (i + 10)) == Math.floor(q) ) return i + 10;
       if ( (q = n / (i + 12)) == Math.floor(q) ) return i + 12;
       if ( (q = n / (i + 16)) == Math.floor(q) ) return i + 16;
       if ( (q = n / (i + 22)) == Math.floor(q) ) return i + 22;
       if ( (q = n / (i + 24)) == Math.floor(q) ) return i + 24;
    }
    return n;
}
