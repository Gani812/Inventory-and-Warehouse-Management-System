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
