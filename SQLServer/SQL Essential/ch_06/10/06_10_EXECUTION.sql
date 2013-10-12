USE AdventureWorks

-- use a join
SELECT TOP 1 CompanyName 
FROM SalesLT.SalesOrderHeader a
INNER JOIN SalesLT.Customer b
ON a.CustomerID = b.CustomerID
ORDER BY TotalDue DESC

-- use a subquery
SELECT CompanyName from SalesLT.Customer
WHERE CustomerID = 
(SELECT TOP 1 CustomerID FROM SalesLT.SalesOrderHeader 
ORDER BY TotalDue DESC)