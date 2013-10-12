
USE AdventureWorksLT
-- STRING functions

-- need a string to work on 
SELECT UPPER(LastName) FROM SalesLT.Customer

SELECT FirstName + ' ' + UPPER(LastName) AS Name 
FROM SalesLT.Customer  

-- get the length of a character field
SELECT FirstName, LEN(FirstName) 
FROM SalesLT.Customer

-- can use one function inside the other
SELECT MAX(LEN(FirstName)) FROM SalesLT.Customer

-- can use functions in the WHERE clause, too
SELECT FirstName FROM SalesLT.Customer
ORDER BY LEN(FirstName) DESC

-- interesting functions
SELECT FirstName, LastName, SOUNDEX(LastName) from SalesLT.Customer
ORDER BY SOUNDEX(LastName)

-- let's you do interesting things - effectively "sounds like"
SELECT FirstName, LastName, SOUNDEX(LastName) from SalesLT.Customer
WHERE SOUNDEX(LastName) = SOUNDEX('Brown')