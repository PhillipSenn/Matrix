var A = '';
A += '"FirstName":"Phillip"';
A += ',"LastName":"Senn"';
A += ',"Intelligence":"00"';
var X = jQuery.parseJSON('{' + A + '}');
PRINT(A);
PRINT(X);
