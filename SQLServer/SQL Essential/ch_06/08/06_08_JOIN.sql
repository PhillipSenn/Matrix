USE AdventureWorksLT

SELECT  a.Name , Color, b.Name  FROM
SalesLT.Product a 
JOIN SalesLT.ProductCategory b
ON a.ProductCategoryID = b.ProductCategoryID

SELECT  a.Name , Color, b.Name  FROM
SalesLT.Product a 
JOIN SalesLT.ProductCategory b
ON a.ProductCategoryID = b.ProductCategoryID

SELECT  a.Name , Color, b.Name  FROM
SalesLT.Product a 
INNER JOIN SalesLT.ProductCategory b
ON a.ProductCategoryID = b.ProductCategoryID

SELECT a.Name AS ProductName, Color, b.Name AS Category  
FROM SalesLT.Product a INNER JOIN SalesLT.ProductCategory b
ON a.ProductCategoryID = b.ProductCategoryID

SELECT a.Name AS ProductName, Color, b.Name AS Category  
FROM SalesLT.Product a 
RIGHT OUTER JOIN SalesLT.ProductCategory b
ON a.ProductCategoryID = b.ProductCategoryID
