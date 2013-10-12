USE AdventureWorksLT

-- find biggest order
SELECT MAX(TotalDue) FROM SalesLT.SalesOrderHeader

-- find the customer ID of the biggest order
SELECT TOP 1 CustomerID FROM SalesLT.SalesOrderHeader 
ORDER BY TotalDue DESC

-- use a join
SELECT TOP 1 a.CustomerID, CompanyName 
FROM SalesLT.SalesOrderHeader a
INNER JOIN SalesLT.Customer b
ON a.CustomerID = b.CustomerID
ORDER BY TotalDue DESC

-- use a subquery
SELECT CompanyName from SalesLT.Customer
WHERE CustomerID = 
(SELECT TOP 1 CustomerID FROM SalesLT.SalesOrderHeader 
ORDER BY TotalDue DESC)

-- find customers who HAVEN'T ordered anything
SELECT CustomerID, FirstName, LastName, CompanyName
FROM SalesLT.Customer
WHERE CustomerID NOT IN 
(SELECT DISTINCT CustomerID FROM
SalesLT.SalesOrderHeader)
