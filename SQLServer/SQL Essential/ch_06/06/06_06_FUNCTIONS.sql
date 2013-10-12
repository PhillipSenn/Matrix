USE AdventureWorksLT

-- total number of rows
SELECT COUNT(*) FROM SalesLT.Product

-- now give the returned total a name
SELECT COUNT(*) AS TotalProducts FROM SalesLT.Product

-- you can still use WHERE, of course
SELECT COUNT(*) AS RedProducts
FROM SalesLT.Product
WHERE Color = 'red'

-- select the value that's the highest in that column
SELECT MAX(ListPrice) FROM SalesLT.Product

-- the lowest
SELECT MIN(ListPrice) FROM SalesLT.Product

-- the average
SELECT AVG(ListPrice) FROM SalesLT.Product

-- or why not several?
SELECT MIN(ListPrice) As MinListPrice,
MAX(ListPrice) AS MaxListPrice,
AVG(ListPrice) As AvgListPrice
FROM SalesLT.Product

-- you can GROUP BY 
SELECT Color, COUNT(*)
FROM SalesLT.Product
GROUP BY Color


