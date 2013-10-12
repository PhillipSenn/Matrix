-- Select the most recent additions
SELECT TOP 1 * from SalesLT.ProductModel ORDER BY ModifiedDate DESC
SELECT TOP 1 * FROM SalesLT.ProductDescription ORDER BY ModifiedDate DESC
SELECT TOP 1 * FROM SalesLT.ProductModelProductDescription ORDER BY ModifiedDate DESC