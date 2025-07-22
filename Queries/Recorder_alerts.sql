#Query: RECORDER ALERTS (THRESHOLD = 10)
SELECT 
    P.ProductName, 
    W.WarehouseName, 
    S.Quantity
FROM 
    Stock S
JOIN Products P ON S.ProductID = P.ProductID
JOIN Warehouses W ON S.WarehouseID = W.WarehouseID
WHERE S.Quantity < 10;


#FIRST, CREATE A NOTIFICATIONS TABLE:
CREATE TABLE Notifications (
    NotificationID INT AUTO_INCREMENT PRIMARY KEY,
    Message TEXT,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);


DELIMITER ;
