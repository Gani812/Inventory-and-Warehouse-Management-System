CREATE PROCEDURE TransferStock(
    IN prodID INT,
    IN fromWH INT,
    IN toWH INT,
    IN qty INT
)
BEGIN
    -- Deduct from source
    UPDATE Stock
    SET Quantity = Quantity - qty
    WHERE ProductID = prodID AND WarehouseID = fromWH;

    -- Add to destination
    INSERT INTO Stock (ProductID, WarehouseID, SupplierID, Quantity, LastUpdated)
    VALUES (
        prodID,
        toWH,
        (SELECT SupplierID FROM Stock WHERE ProductID = prodID AND WarehouseID = fromWH LIMIT 1),
        qty,
        CURRENT_DATE()
    )
    ON DUPLICATE KEY UPDATE Quantity = Quantity + qty, LastUpdated = CURRENT_DATE();
END;
