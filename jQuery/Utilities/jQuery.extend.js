var A = { A1 : 1, myObj: {A3: 3, A4: 4} };
var B = { B1 : 1, myObj: {B20: 20, B30: 30} };
PRINT(A);
PRINT(B);
$.extend(A, B); 
PRINT(A);
