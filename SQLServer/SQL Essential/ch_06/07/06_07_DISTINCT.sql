USE AdventureWorksLT

SELECT * from SalesLT.Address

SELECT CountryRegion 
FROM SalesLT.Address

SELECT DISTINCT CountryRegion 
FROM SalesLT.Address

SELECT DISTINCT CountryRegion, StateProvince 
FROM SalesLT.Address

SELECT COUNT(DISTINCT CountryRegion) 
FROM SalesLT.Address

