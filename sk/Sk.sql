
CREATE DATABASE ShopDB;
GO

USE ShopDB;
GO


CREATE TABLE Categories(
	CategoryID INT IDENTITY(1,1) PRIMARY KEY,
	CategotyName NVARCHAR(100) NOT NULL,
	Description NVARCHAR(500)
); 


CREATE TABLE Suppliers(
	SupplierID INT IDENTITY(1,1) PRIMARY KEY,
	SupplierName NVARCHAR(150) NOT NULL,
	ContactName NVARCHAR(100),
	Phone NVARCHAR(20),
	Email Nvarchar(100),
	Address NVARCHAR(250)
);


CREATE TABLE Product(
	ProductID INT IDENTITY(1,1) PRIMARY KEY,
	ProductName NVARCHAR(150) NOT NULL,
	CategoryID INT,
	SuppliersID INT,
	Price MONEY NOT NULL,
	StockQuantity INT NOT NULL,
	Description NVARCHAR(500),
	FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
	FOREIGN KEY  (SupplierID) REFERENCES Suppliers(SupplierID)
);