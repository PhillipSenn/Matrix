var A = $('p');
var B = $(A[1]);
PRINT(A);
PRINT(A[1]);
PRINT($(A[1]).text());
PRINT(A[1].textContent);
PRINT(A[1].innerText); // IE only
PRINT(B);
PRINT(A.length);
PRINT(B.length);
