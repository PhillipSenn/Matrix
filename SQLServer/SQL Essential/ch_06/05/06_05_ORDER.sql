USE AdventureWorksLT

-- ORDER BY columns don't have to be retrieved in the SELECT

-- asc is the default
SELECT ProductID, Name, Color, ListPrice
FROM SalesLT.Product
ORDER BY ListPrice

-- or DESC for descending order
SELECT ProductID, Name, Color, ListPrice
FROM SalesLT.Product
ORDER BY ListPrice DESC

-- multiple sort - color will be sorted ascending,
-- THEN ListPrice sorted descending
SELECT ProductID, Name, Color, ListPrice
FROM SalesLT.Product
ORDER BY Color, ListPrice DESC

-- combine with WHERE - goes before ORDER BY
SELECT ProductID, Name, Color, ListPrice
FROM SalesLT.Product
WHERE Color = 'red'
ORDER BY ListPrice DESC

-- how about 10 most expensive products?
SELECT TOP 10 
ProductID, Name, Color, ListPrice
FROM SalesLT.Product
ORDER BY ListPrice DESC

-- or top 1/4?
SELECT TOP 25 PERCENT
ProductID, Name, Color, ListPrice
FROM SalesLT.Product
ORDER BY ListPrice DESC