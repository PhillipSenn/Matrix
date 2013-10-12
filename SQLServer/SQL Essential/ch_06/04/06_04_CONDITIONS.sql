USE AdventureWorksLT

-- no WHERE, fetch everything
SELECT FirstName, LastName, EmailAddress 
FROM SalesLT.Customer

-- basic text check
SELECT FirstName, LastName, EmailAddress 
FROM SalesLT.Customer
WHERE LastName = 'vargas'

-- if field is numeric, no quotes
SELECT FirstName, LastName, EmailAddress 
FROM SalesLT.Customer
WHERE CustomerID = 600

-- numeric range
SELECT FirstName, LastName, EmailAddress 
FROM SalesLT.Customer
WHERE CustomerID > 600 AND CustomerID < 700

-- slightly more readable
SELECT FirstName, LastName, EmailAddress 
FROM SalesLT.Customer
WHERE CustomerID BETWEEN 600 AND 700

-- range is greater than, less than (this will only fetch B* names)
SELECT FirstName, LastName, EmailAddress 
FROM SalesLT.Customer
WHERE LastName BETWEEN 'a' AND 'c'

-- to check several values
SELECT FirstName, LastName, EmailAddress 
FROM SalesLT.Customer
WHERE LastName IN ('Tian','Clark','Harding')

-- wildcard check
SELECT FirstName, LastName, EmailAddress,
CompanyName 
FROM SalesLT.Customer
WHERE CompanyName LIKE 'Metro%'

-- will work, but can be very inefficient on large tables 
SELECT FirstName, LastName, EmailAddress,
CompanyName 
FROM SalesLT.Customer
WHERE CompanyName LIKE '%etro%'

-- underscore represents one character
SELECT FirstName, LastName, EmailAddress,
CompanyName 
FROM SalesLT.Customer
WHERE CompanyName LIKE '_etro%'

-- check for NULL is not "WHERE column = NULL", but "WHERE column IS NULL"
SELECT FirstName, MiddleName, LastName, EmailAddress
FROM SalesLT.Customer
WHERE MiddleName IS NULL

-- or IS NOT NULL
SELECT FirstName, LastName, EmailAddress, Suffix 
FROM SalesLT.Customer
WHERE Suffix IS NOT NULL




