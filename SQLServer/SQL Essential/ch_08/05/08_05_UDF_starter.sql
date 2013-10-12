-- original SQL Statement before conversion
USE AdventureWorksLT

SELECT CompanyName
FROM SalesLT.Customer
WHERE CustomerID = (SELECT TOP 1 CustomerID
FROM SalesLT.SalesOrderHeader
ORDER BY TotalDue DESC)