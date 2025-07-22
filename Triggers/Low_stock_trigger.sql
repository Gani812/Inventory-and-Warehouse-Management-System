#TRIGGER: ON STOCK UPDATE, INSERT ALERT IF QUANTITY < 10
  
DELIMITER //

CREATE TRIGGER trg_low_stock
AFTER UPDATE ON Stock
FOR EACH ROW
BEGIN
    IF NEW.Quantity < 10 THEN
        INSERT INTO Notifications (Message)
        VALUES (
            CONCAT(
                'Low stock alert for Product ID ', NEW.ProductID, 
                ' at Warehouse ID ', NEW.WarehouseID, 
                '. Remaining stock: ', NEW.Quantity
            )
        );
    END IF;
END;
//
