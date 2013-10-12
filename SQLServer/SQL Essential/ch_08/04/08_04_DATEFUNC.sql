-- date functions

-- this returns not just the date, but datetime
-- the parentheses are required
SELECT GETDATE()

-- can select DAY, MONTH, YEAR of a particular date
-- but need a date to work with!
SELECT DAY(GETDATE())

-- or a different piece:
SELECT DATEPART(WEEKDAY, GETDATE())

-- if you don't want numeric, can get the name
SELECT DATENAME(WEEKDAY, GETDATE())

-- can add
SELECT DATEADD(DAY,30,GETDATE())

-- or subtract
SELECT DATEADD(MONTH,-7,GETDATE())

-- or combine!
SELECT DATENAME(WEEKDAY,DATEADD(MONTH,-7,GETDATE()))
