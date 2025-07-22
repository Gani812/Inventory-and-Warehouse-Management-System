#QUERY: CHECK STOCK LEVEL FOR A SPECIFIC PRODUCT
SELECT 
    P.ProductName, 
    W.WarehouseName, 
    S.Quantity
FROM 
    Stock S
JOIN Products P ON S.ProductID = P.ProductID
JOIN Warehouses W ON S.WarehouseID = W.WarehouseID
WHERE P.ProductName = 'Table Item';
