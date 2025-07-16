#CREATE DATABASE
CREATE DATABASE IF NOT EXISTS InventoryDB;

#Use DATABASE
USE InventoryDB;


#CREATE TABLES
-- 1. Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    UnitPrice DECIMAL(10, 2)
);

-- 2. Warehouses Table
CREATE TABLE Warehouses (
    WarehouseID INT PRIMARY KEY,
    WarehouseName VARCHAR(100),
    Location VARCHAR(100)
);

-- 3. Suppliers Table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactEmail VARCHAR(100),
    Phone VARCHAR(50)
);

-- 4. Stock Table
CREATE TABLE Stock (
    StockID INT PRIMARY KEY,
    ProductID INT,
    WarehouseID INT,
    SupplierID INT,
    Quantity INT,
    LastUpdated DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(WarehouseID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);


#INSERT DATA INTO TABLES
INSERT INTO Products (ProductID, ProductName, Category, UnitPrice) VALUES
(1, 'Table Item', 'Clothing', 826.58),
(2, 'Hospital Item', 'Appliances', 435.98),
(3, 'Consumer Item', 'Furniture', 687.19),
(4, 'Me Item', 'Furniture', 56.46),
(5, 'Mention Item', 'Furniture', 513.14),
(6, 'Office Item', 'Electronics', 108.74),
(7, 'Chance Item', 'Electronics', 171.17),
(8, 'Laugh Item', 'Appliances', 463.45),
(9, 'Fly Item', 'Appliances', 173.63),
(10, 'Purpose Item', 'Appliances', 918.4),
(11, 'Tough Item', 'Clothing', 507.4),
(12, 'Protect Item', 'Appliances', 864.07),
(13, 'Ever Item', 'Appliances', 694.54),
(14, 'Despite Item', 'Furniture', 714.26),
(15, 'Contain Item', 'Electronics', 416.57),
(16, 'Quality Item', 'Clothing', 922.39),
(17, 'One Item', 'Appliances', 487.45),
(18, 'Rate Item', 'Furniture', 770.56),
(19, 'Scene Item', 'Electronics', 812.59),
(20, 'House Item', 'Furniture', 794.62),
(21, 'Maintain Item', 'Clothing', 475.51),
(22, 'Last Item', 'Furniture', 577.13),
(23, 'Represent Item', 'Clothing', 354.2),
(24, 'Position Item', 'Clothing', 80.4),
(25, 'Keep Item', 'Furniture', 383.77),
(26, 'Agreement Item', 'Furniture', 261.74),
(27, 'Company Item', 'Electronics', 278.94),
(28, 'Size Item', 'Appliances', 205.06),
(29, 'Tend Item', 'Electronics', 522.11),
(30, 'City Item', 'Furniture', 511.01),
(31, 'Start Item', 'Clothing', 772.26),
(32, 'Involve Item', 'Electronics', 48.8),
(33, 'Condition Item', 'Electronics', 426.27),
(34, 'Never Item', 'Clothing', 20.04),
(35, 'Might Item', 'Appliances', 144.45),
(36, 'Still Item', 'Electronics', 604.28),
(37, 'Ten Item', 'Furniture', 963.33),
(38, 'Buy Item', 'Electronics', 365.88),
(39, 'Together Item', 'Appliances', 104.15),
(40, 'School Item', 'Electronics', 862.31),
(41, 'Security Item', 'Clothing', 88.17),
(42, 'Range Item', 'Appliances', 316.02),
(43, 'Guy Item', 'Furniture', 614.37),
(44, 'Its Item', 'Appliances', 57.89),
(45, 'Future Item', 'Furniture', 958.49),
(46, 'Food Item', 'Clothing', 715.41),
(47, 'Budget Item', 'Clothing', 640.53),
(48, 'Environmental Item', 'Electronics', 221.73),
(49, 'Tell Item', 'Clothing', 20.13),
(50, 'Game Item', 'Electronics', 371.51);

INSERT INTO Warehouses (WarehouseID, WarehouseName, Location) VALUES
(1, 'Warehouse 1', 'Travischester'),
(2, 'Warehouse 2', 'Barbaraton'),
(3, 'Warehouse 3', 'Graychester'),
(4, 'Warehouse 4', 'West Aprilland'),
(5, 'Warehouse 5', 'North Erinport');

INSERT INTO Suppliers (SupplierID, SupplierName, ContactEmail, Phone) VALUES
(1, 'Fernandez-Turner', 'bryan07@francis.info', '159.452.3632'),
(2, 'Carter Inc', 'jacobwells@hotmail.com', '+1-767-757-7324x504'),
(3, 'Lozano Ltd', 'dawn04@hernandez-pena.com', '330.370.8084x982'),
(4, 'White Group', 'josephmckee@navarro.biz', '(969)649-2088'),
(5, 'Sullivan-Ortiz', 'amartinez@mcclure-rodriguez.com', '112-084-6688x566'),
(6, 'Martin, Phillips and Tanner', 'james76@moss.com', '157.872.4905x060'),
(7, 'Robinson-Lopez', 'jcarlson@day.net', '+1-673-719-7718x16754'),
(8, 'Jackson and Sons', 'vbyrd@silva.com', '873-620-4526'),
(9, 'Mendez-Wood', 'scherry@pacheco-bell.com', '(530)469-9969'),
(10, 'Cooper, Hernandez and Cox', 'jessica53@lewis.info', '490.507.5846x596');

INSERT INTO Stock (StockID, ProductID, WarehouseID, SupplierID, Quantity, LastUpdated) VALUES
(1, 3, 4, 2, 21, 2025-01-09),
(2, 13, 1, 10, 79, 2025-03-16),
(3, 49, 1, 7, 36, 2025-07-13),
(4, 38, 1, 10, 64, 2025-04-29),
(5, 5, 3, 3, 49, 2025-06-27),
(6, 35, 3, 4, 74, 2025-06-02),
(7, 31, 5, 7, 20, 2025-04-28),
(8, 10, 5, 4, 7, 2025-07-15),
(9, 12, 1, 2, 91, 2025-05-11),
(10, 24, 5, 10, 27, 2025-03-20),
(11, 34, 3, 9, 56, 2025-01-20),
(12, 45, 5, 1, 42, 2025-05-02),
(13, 18, 5, 5, 19, 2025-06-24),
(14, 35, 4, 6, 32, 2025-04-09),
(15, 20, 4, 5, 83, 2025-06-27),
(16, 44, 5, 5, 26, 2025-01-17),
(17, 47, 3, 1, 39, 2025-06-18),
(18, 46, 4, 5, 41, 2025-07-12),
(19, 40, 3, 10, 2, 2025-05-30),
(20, 43, 1, 8, 70, 2025-06-26),
(21, 4, 4, 4, 37, 2025-05-04),
(22, 14, 5, 10, 33, 2025-01-13),
(23, 18, 2, 6, 68, 2025-05-30),
(24, 3, 2, 10, 28, 2025-01-10),
(25, 9, 1, 2, 52, 2025-04-01),
(26, 2, 2, 2, 3, 2025-01-17),
(27, 36, 3, 7, 81, 2025-06-28),
(28, 13, 5, 2, 0, 2025-04-13),
(29, 32, 5, 9, 74, 2025-06-02),
(30, 20, 5, 3, 6, 2025-03-15),
(31, 26, 2, 3, 22, 2025-02-09),
(32, 22, 1, 9, 28, 2025-06-11),
(33, 15, 5, 9, 95, 2025-01-03),
(34, 31, 4, 10, 92, 2025-04-05),
(35, 13, 3, 1, 57, 2025-05-20),
(36, 34, 2, 7, 51, 2025-07-02),
(37, 11, 3, 10, 14, 2025-05-08),
(38, 34, 1, 5, 28, 2025-06-03),
(39, 4, 4, 2, 43, 2025-03-09),
(40, 3, 5, 2, 45, 2025-02-07),
(41, 12, 1, 6, 36, 2025-03-14),
(42, 4, 3, 3, 71, 2025-03-03),
(43, 13, 3, 6, 86, 2025-01-12),
(44, 48, 2, 5, 48, 2025-01-02),
(45, 38, 2, 8, 60, 2025-04-05),
(46, 48, 3, 10, 92, 2025-06-04),
(47, 21, 4, 10, 91, 2025-04-15),
(48, 49, 4, 2, 14, 2025-01-12),
(49, 44, 4, 6, 82, 2025-03-15),
(50, 44, 3, 10, 23, 2025-02-14),
(51, 35, 3, 2, 94, 2025-03-07),
(52, 29, 2, 8, 9, 2025-07-06),
(53, 20, 1, 5, 100, 2025-01-13),
(54, 17, 4, 10, 37, 2025-02-17),
(55, 10, 1, 8, 52, 2025-04-15),
(56, 15, 1, 7, 62, 2025-04-02),
(57, 24, 1, 7, 23, 2025-04-19),
(58, 17, 2, 10, 7, 2025-01-25),
(59, 39, 4, 5, 21, 2025-07-15),
(60, 17, 3, 5, 86, 2025-05-15),
(61, 34, 2, 7, 36, 2025-05-22),
(62, 34, 5, 5, 64, 2025-05-08),
(63, 38, 2, 6, 46, 2025-02-20),
(64, 47, 1, 9, 56, 2025-01-18),
(65, 1, 5, 5, 81, 2025-04-20),
(66, 10, 3, 6, 71, 2025-02-25),
(67, 16, 1, 10, 71, 2025-04-02),
(68, 33, 2, 10, 78, 2025-06-09),
(69, 29, 5, 4, 49, 2025-05-28),
(70, 48, 5, 2, 35, 2025-07-12),
(71, 11, 4, 4, 42, 2025-03-26),
(72, 20, 4, 8, 74, 2025-05-22),
(73, 5, 4, 1, 86, 2025-02-28),
(74, 4, 5, 7, 67, 2025-02-28),
(75, 30, 3, 4, 84, 2025-06-04),
(76, 28, 4, 5, 24, 2025-01-17),
(77, 27, 3, 5, 97, 2025-01-24),
(78, 12, 4, 2, 14, 2025-06-29),
(79, 50, 5, 3, 72, 2025-04-11),
(80, 40, 1, 1, 72, 2025-03-30),
(81, 38, 5, 5, 90, 2025-05-06),
(82, 17, 4, 4, 21, 2025-04-09),
(83, 44, 5, 7, 76, 2025-01-05),
(84, 16, 3, 7, 4, 2025-03-11),
(85, 11, 1, 4, 95, 2025-04-19),
(86, 42, 1, 2, 32, 2025-03-20),
(87, 20, 1, 1, 52, 2025-01-09),
(88, 46, 3, 5, 11, 2025-02-07),
(89, 32, 4, 2, 1, 2025-05-13),
(90, 1, 4, 1, 97, 2025-05-13),
(91, 30, 2, 1, 48, 2025-03-22),
(92, 9, 3, 4, 21, 2025-06-13),
(93, 21, 3, 4, 25, 2025-06-21),
(94, 15, 5, 4, 68, 2025-05-15),
(95, 13, 2, 4, 0, 2025-06-08),
(96, 43, 1, 2, 45, 2025-07-03),
(97, 47, 1, 10, 49, 2025-04-29),
(98, 36, 5, 5, 100, 2025-06-20),
(99, 45, 4, 8, 16, 2025-06-23),
(100, 35, 4, 9, 33, 2025-03-19),
(101, 37, 1, 1, 53, 2025-03-25),
(102, 22, 3, 4, 18, 2025-06-19),
(103, 20, 2, 1, 65, 2025-02-03),
(104, 35, 4, 3, 85, 2025-06-22),
(105, 46, 3, 9, 9, 2025-05-05),
(106, 19, 4, 1, 79, 2025-07-04),
(107, 17, 4, 4, 98, 2025-05-06),
(108, 7, 3, 6, 75, 2025-02-04),
(109, 29, 4, 10, 71, 2025-04-01),
(110, 32, 4, 4, 33, 2025-03-26),
(111, 20, 5, 7, 27, 2025-05-19),
(112, 42, 1, 10, 89, 2025-07-10),
(113, 15, 5, 5, 67, 2025-02-05),
(114, 50, 2, 4, 10, 2025-01-21),
(115, 20, 3, 10, 27, 2025-04-05),
(116, 8, 2, 4, 74, 2025-01-11),
(117, 29, 2, 8, 2, 2025-04-06),
(118, 15, 3, 2, 9, 2025-06-25),
(119, 27, 2, 7, 52, 2025-01-12),
(120, 48, 1, 4, 79, 2025-04-27),
(121, 30, 1, 5, 26, 2025-04-01),
(122, 22, 3, 8, 72, 2025-04-21),
(123, 41, 4, 1, 42, 2025-06-15),
(124, 41, 3, 8, 72, 2025-07-14),
(125, 25, 2, 1, 58, 2025-03-13),
(126, 28, 4, 6, 49, 2025-05-15),
(127, 25, 5, 2, 23, 2025-04-28),
(128, 21, 4, 9, 99, 2025-04-28),
(129, 5, 5, 6, 68, 2025-01-01),
(130, 13, 4, 2, 23, 2025-02-23),
(131, 6, 2, 4, 63, 2025-07-05),
(132, 23, 3, 4, 28, 2025-01-31),
(133, 15, 1, 2, 31, 2025-02-25),
(134, 21, 1, 2, 60, 2025-05-26),
(135, 15, 4, 7, 97, 2025-04-23),
(136, 27, 2, 7, 21, 2025-03-30),
(137, 14, 5, 9, 88, 2025-05-02),
(138, 37, 1, 6, 36, 2025-05-09),
(139, 7, 4, 1, 32, 2025-02-25),
(140, 34, 2, 8, 38, 2025-06-25),
(141, 29, 5, 2, 72, 2025-02-13),
(142, 49, 4, 1, 100, 2025-01-21),
(143, 44, 5, 8, 43, 2025-01-26),
(144, 44, 2, 1, 73, 2025-04-29),
(145, 37, 5, 8, 24, 2025-02-27),
(146, 18, 3, 8, 9, 2025-01-09),
(147, 5, 3, 8, 29, 2025-07-09),
(148, 5, 1, 7, 39, 2025-04-25),
(149, 24, 3, 2, 63, 2025-03-30),
(150, 17, 1, 8, 95, 2025-02-15),
(151, 26, 5, 1, 91, 2025-06-01),
(152, 49, 3, 8, 18, 2025-03-07),
(153, 42, 2, 7, 27, 2025-01-17),
(154, 9, 3, 3, 42, 2025-01-06),
(155, 35, 5, 5, 88, 2025-02-17),
(156, 17, 5, 7, 100, 2025-06-17),
(157, 8, 4, 8, 69, 2025-03-08),
(158, 46, 2, 4, 99, 2025-04-11),
(159, 50, 3, 3, 45, 2025-05-28),
(160, 4, 3, 6, 55, 2025-01-20),
(161, 27, 4, 3, 95, 2025-06-03),
(162, 44, 3, 10, 65, 2025-06-23),
(163, 10, 2, 6, 46, 2025-01-24),
(164, 21, 4, 6, 84, 2025-02-11),
(165, 4, 4, 4, 80, 2025-05-03),
(166, 14, 3, 1, 94, 2025-03-08),
(167, 6, 3, 2, 55, 2025-06-01),
(168, 6, 5, 6, 51, 2025-01-21),
(169, 26, 2, 5, 58, 2025-05-10),
(170, 5, 1, 5, 64, 2025-06-09),
(171, 20, 1, 3, 72, 2025-03-22),
(172, 36, 4, 4, 17, 2025-06-01),
(173, 13, 5, 8, 74, 2025-01-19),
(174, 33, 1, 4, 8, 2025-03-08),
(175, 12, 1, 2, 26, 2025-04-01),
(176, 32, 2, 7, 66, 2025-07-07),
(177, 26, 4, 6, 69, 2025-06-12),
(178, 8, 2, 5, 50, 2025-02-02),
(179, 21, 5, 7, 12, 2025-05-23),
(180, 15, 3, 8, 53, 2025-05-13),
(181, 46, 3, 4, 12, 2025-03-14),
(182, 42, 3, 5, 72, 2025-01-09),
(183, 5, 5, 10, 66, 2025-02-22),
(184, 39, 1, 5, 24, 2025-05-08),
(185, 28, 2, 2, 40, 2025-06-03),
(186, 6, 5, 9, 77, 2025-03-11),
(187, 4, 5, 10, 30, 2025-06-17),
(188, 48, 5, 6, 76, 2025-01-26),
(189, 46, 2, 3, 66, 2025-01-21),
(190, 27, 4, 3, 32, 2025-02-22),
(191, 42, 2, 5, 62, 2025-04-21),
(192, 11, 2, 6, 90, 2025-01-28),
(193, 46, 3, 4, 88, 2025-05-14),
(194, 4, 4, 2, 93, 2025-01-27),
(195, 11, 1, 10, 35, 2025-03-30),
(196, 18, 1, 4, 91, 2025-03-14),
(197, 28, 1, 10, 30, 2025-03-22),
(198, 6, 5, 2, 97, 2025-04-17),
(199, 44, 4, 6, 26, 2025-07-05),
(200, 9, 5, 6, 3, 2025-06-08);


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

DELIMITER ;


#STORED PROCEDURE TO TRANSFER STOCK BETWEEN WAREHOUSES
DELIMITER //

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

    -- Add to target (insert or update)
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
//

DELIMITER ;
