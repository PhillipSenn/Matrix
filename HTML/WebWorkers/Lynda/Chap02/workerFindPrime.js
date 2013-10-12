/*
    workerFindPrime.js by Bill Weinman 
    <http://bw.org/contact/>
    created 2011-11-17

    Copyright (c) 2011 The BearHeart Group, LLC
    This file may be used for personal educational purposes as needed. 
    Use for other purposes is granted provided that this notice is
    retained and any changes made are clearly indicated as such. 
*/

var version = '1.0.3';

self.addEventListener('message', handleMessage, false);

// Search for next prime number
function handleMessage(event) {
    n = event.data.value;

    // return NaN if the number is problematic
    if(isNaN(n) || !isFinite(n)) {
        postMessage({ errorMessage : 'Not a number.', value : NaN });
        return;
    }

    while(true) {
        // return NaN if the number is too big
        if(!is12(n)) {
            postMessage({ errorMessage : 'Number too big.', value : NaN });
            break;
        }
        if(isPrime(n)) {
            postMessage({ value : n });
            break;
        }
        else ++n;
    }
}

function isPrime(n) {
    if (n % 1 || n < 2) return false; 
    if (n == leastFactor(n)) return true;
    return false;
}

// The largest reliable integer is 12 digits
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

