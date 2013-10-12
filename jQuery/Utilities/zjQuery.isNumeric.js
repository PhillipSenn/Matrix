PRINT($.isNumeric(1));
PRINT($.isNumeric(+1));
PRINT($.isNumeric(-1));
PRINT($.isNumeric(1.1));
PRINT($.isNumeric('1'));
PRINT($.isNumeric(' 1'));
PRINT($.isNumeric('1 '));
PRINT($.isNumeric('0xFF')); // hex
PRINT(parseInt(0xFF));
PRINT($.isNumeric('0XFF')); // uppercase X
PRINT(parseInt(0XFF));
PRINT($.isNumeric('8e5'));  // exponential notation
PRINT(parseInt(8e5));
PRINT('The rest are false');
PRINT($.isNumeric('0XZZ')); // Not hex values
PRINT($.isNumeric(''));
PRINT($.isNumeric({}));
PRINT($.isNumeric(NaN));
PRINT($.isNumeric(null));
PRINT($.isNumeric(true)); // Huh?
PRINT(isNaN(true));
PRINT($.isNumeric(Infinity)); // Huh?
PRINT(isNaN(Infinity));
PRINT($.isNumeric(undefined));
PRINT($.isNumeric(''));
PRINT(isNaN(''));
PRINT(parseInt(''));
