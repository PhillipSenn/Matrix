USE AdventureWorksLT

-- update single row (using PK)
UPDATE SalesLT.ProductCategory
SET ParentProductCategoryID = 1,
WHERE ProductCategoryID = 46

-- update two columns in a single row
UPDATE SalesLT.ProductCategory
SET ParentProductCategoryID = 1,
Name = 'Commuter Bikes'
WHERE ProductCategoryID = 46

-- update (potentially) multiple rows
UPDATE SalesLT.Product
SET ListPrice = ListPrice + 2
WHERE ListPrice < 50