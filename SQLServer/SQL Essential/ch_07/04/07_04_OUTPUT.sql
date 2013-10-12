USE AdventureWorksLT

-- can output one value
INSERT INTO SalesLT.ProductCategory
(ParentProductCategoryID, Name)
OUTPUT inserted.ProductCategoryID
VALUES (1,'Hybrid Bikes') 

-- output multiple values
INSERT INTO SalesLT.ProductCategory
(ParentProductCategoryID, Name)
OUTPUT inserted.ProductCategoryID , inserted.rowguid
VALUES (1,'Custom Bikes') 

-- you can output information on a deleted row
DELETE SalesLT.ProductCategory
OUTPUT deleted.Name
WHERE ProductCategoryID = 44

-- get the GUID for an update
UPDATE SalesLT.ProductCategory
SET ParentProductCategoryID = 1,
Name = 'Commuter Bikes'
-- NOTE: it's not "updated".rowguid, it's still "inserted"
OUTPUT inserted.rowguid
WHERE ProductCategoryID = 46




