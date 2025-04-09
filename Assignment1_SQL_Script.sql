--DROP TABLE Customer;
CREATE TABLE Customer
(
	CustID		CHAR(10)	NOT NULL,
	CustName	CHAR(50)	NOT NULL,
	CustAddress	CHAR(50)	,
	CustCity	CHAR(50)	,
	CustContact	CHAR(50)	,
	CustPhone	CHAR(15)	,
	CustEmail	CHAR(255)	
);

--DROP TABLE OrderEntry;
CREATE TABLE OrderEntry
(
	OrderID		INTEGER		NOT NULL,
	OrderDate	DATETIME	NOT NULL,
	CustID		CHAR(10)	NOT NULL
);

--DROP TABLE Vendor;
CREATE TABLE Vendor
(
	VendorID		CHAR(10)	NOT NULL,
	VendorName		CHAR(50)	NOT NULL,
	VendorAddress	CHAR(50)	,
	VendorCity		CHAR(50)	,
	VendorPhone		CHAR(15)
);

--DROP TABLE OrderItem;
CREATE TABLE OrderItem
(
	OrderID		INTEGER		NOT NULL,
	OrderItem	INTEGER		NOT NULL,
	ProductID	CHAR(10)	NOT NULL,
	Quantity	INTEGER		NOT NULL,
	ItemPrice	DECIMAL(8,2)NOT NULL
);

--DROP TABLE Product;
CREATE TABLE Product
(
	ProductID		CHAR(10)	NOT NULL,
	VendorID		CHAR(10)	NOT NULL,
	ProductName		CHAR(255)	NOT NULL,
	ProductPrice	DECIMAL(8,2)NOT NULL,
	ProductDesc		VARCHAR(100)		
);

-- Insert data to the created database
INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000001','Village Toys','200 Oak Lane','Wellington','09-389-2356','John Smith','sales@villagetoys.co.nz');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact)
VALUES('1000000002','Kids Place','333 Tahunanui Drive','Nelson','03-545-6333','Michelle Green');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000003','Fun4All','1 Sunny Place','Nelson','03-548-2285','Jim Jones','jjones@fun4all.co.nz');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000004','Fun4All','829 Queen Street','Auckland','09-368-7894','Denise L. Stephens','dstephens@fun4all.co.nz');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact)
VALUES('1000000005','The Toy Store','50 Papanui Road','Christchurch','04-345-4545','Kim Howard');


INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20005,'1999/5/1','1000000001');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20006,'1999/1/12','1000000003');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20007,'1999/1/30','1000000004');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20008,'1999/2/3','1000000005');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20009, '1999/2/8','1000000001');


INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('BRS01','Bears R Us','123 Main Street','Richmond','03-523-8871');

INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('BRE02','Bear Emporium','500 Park Street','Auckland','06-396-8854');

INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('DLL01','Doll House Inc.','555 High Street','Motueka','03-455-7898');

INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('FRB01','Furball Inc.','1 Clifford Avenue','Nelson','03-546-9978');


INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20005,1,'BR01',100,5.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20005,2,'BR03',100,10.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,1,'BR01',20,5.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,2,'BR02',10,8.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,3,'BR03',10,11.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,1,'BR03',50,11.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,2,'BNBG01',100,2.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,3,'BNBG02',100,2.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,4,'BNBG03',100,2.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,5,'RGAN01',50,4.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,1,'RGAN01',5,4.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,2,'BR03',5,11.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,3,'BNBG01',10,3.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,4,'BNBG02',10,3.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,5,'BNBG03',10,3.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,1,'BNBG01',250,2.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,2,'BNBG02',250,2.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,3,'BNBG03',250,2.49);


INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR01', 'BRS01', '8 inch teddy bear',5.99,'8 inch teddy bear, comes with cap and jacket');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR02', 'BRS01', '12 inch teddy bear',8.99,'12 inch teddy bear, comes with cap and jacket');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR03', 'BRS01', '18 inch teddy bear',11.99,'18 inch teddy bear, comes with cap and jacket');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG01', 'DLL01', 'Fish bean bag toy',3.49,'Fish bean bag toy, complete with bean bag worms with which to feed it');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG02', 'DLL01', 'Bird bean bag toy',3.49,'Bird bean bag toy, eggs are not included');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG03', 'DLL01', 'Rabbit bean bag toy',3.49,'Rabbit bean bag toy, comes with bean bag carrots');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('RGAN01', 'DLL01', 'Raggedy Ann',4.99,'18 inch Raggedy Ann doll');

-- Alter tables to insert constraints
-- Setting the the CustID as the primary key
ALTER TABLE Customer
ADD CONSTRAINT PK_Customer PRIMARY KEY (CustID);

-- Setting the OrderID as the primary key
ALTER TABLE OrderEntry
ADD CONSTRAINT PK_OrderEntry PRIMARY KEY (OrderID);

-- Setting the ProductID as the primary key
ALTER TABLE Product
ADD CONSTRAINT PK_Product PRIMARY KEY (ProductID);

-- Creates a composite primary key for OrderItem using OrderID and OrderItem
ALTER TABLE OrderItem
ADD CONSTRAINT PK_OrderItem PRIMARY KEY (OrderID, OrderItem);

-- Setting the VendorID as the primary key
ALTER TABLE Vendor
ADD CONSTRAINT PK_Vendor PRIMARY KEY (VendorID);

-- Add Foreign Keys to existing tables
-- NOTE: Make sure the referenced primary keys exist before running these

-- OrderEntry.CustID -> Customer.CustID
ALTER TABLE OrderEntry
ADD CONSTRAINT FK_OrderEntry_Customer
FOREIGN KEY (CustID) REFERENCES Customer(CustID);

-- OrderItem.OrderID -> OrderEntry.OrderID
ALTER TABLE OrderItem
ADD CONSTRAINT FK_OrderItem_OrderEntry
FOREIGN KEY (OrderID) REFERENCES OrderEntry(OrderID);

-- OrderItem.ProductID -> Product.ProductID
ALTER TABLE OrderItem
ADD CONSTRAINT FK_OrderItem_Product
FOREIGN KEY (ProductID) REFERENCES Product(ProductID);

-- Product.VendorID -> Vendor.VendorID
ALTER TABLE Product
ADD CONSTRAINT FK_Product_Vendor
FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID);

-- Assessment Queries
-- Task 1: List vendor ID and product name for products not made by vendor DLL01
SELECT VendorID, ProductName
FROM dbo.Product
WHERE VendorID <> 'DLL01';

-- Task 2: List all the products with a price between $5.00 and $10.00
SELECT ProductName, ProductPrice 
FROM dbo.Product
WHERE ProductPrice BETWEEN 5 AND 10;

-- Task 3: List any products made by either vendor DLL01 or vendor BRS01 costing $10.00 or greater
SELECT VendorID, ProductPrice
FROM dbo.Product
WHERE (VendorID = 'DLL01' OR VendorID = 'BRS01') AND ProductPrice >= 10;

-- Task 4: Return the average price of all the products in the Products table (AVG)
SELECT AVG(ProductPrice) AS AveragePrice
FROM dbo.Product;

-- Task 5: Return the total number of customers in the Customers table
SELECT COUNT(*) AS TotalCustomer
FROM dbo.Customer;

-- Task 6: Return the number of customers in the Customers table with an e-mail address
SELECT COUNT(CustEmail) AS CustWithEmail
FROM dbo.Customer
WHERE CustEmail IS NOT NULL;

-- Task 7: Return the number of product types, minimum, maximum and average product price from the products table
SELECT
	COUNT(*) AS TotalProducts,
	MIN(ProductPrice) AS MinimumPrice,
	MAX(ProductPrice) AS MaximumPrice,
	AVG(ProductPrice) AS AveragePrice
FROM dbo.Product;

-- Task 8: Return the vendor name, product price and product name from the vendors and products tables 
SELECT
	Vendor.VendorName,
	Product.ProductName,
	Product.ProductPrice
FROM Product
JOIN Vendor ON Product.VendorID = Vendor.VendorID;

-- Task 9:  Return the product name, vendor name, product price and quantity for each item in order number 20007
SELECT 
	Product.ProductName,
	Vendor.VendorName,
	Product.ProductPrice,
	OrderItem.Quantity
FROM OrderItem
JOIN Product ON OrderItem.ProductID = Product.ProductID
JOIN Vendor ON Product.VendorID = Vendor.VendorID
WHERE OrderItem.OrderID = 20007;

-- Task 10: Create a list of all the customers (customer name and customer contact) who ordered item RGAN01
SELECT CustName, CustContact
FROM dbo.Customer
WHERE CustID IN (
  SELECT CustID
  FROM dbo.OrderEntry
  WHERE OrderID IN (
    SELECT OrderID
    FROM dbo.OrderItem
    WHERE ProductID = 'RGAN01'
  )
);

-- Task 11: Display the total number of orders placed by every customer in the Customers table, as well as the city the customer is in 
SELECT 
  CustName, 
  CustCity,
  (SELECT COUNT(*) 
   FROM dbo.OrderEntry 
   WHERE OrderEntry.CustID = Customer.CustID) AS TotalOrders
FROM dbo.Customer
ORDER BY CustName;

-- Task 12: Create a report on all the customers in Nelson and Wellington
WITH SelectedCustomers AS (
    SELECT CustName, CustContact, CustEmail
    FROM dbo.Customer
    WHERE CustCity IN ('Nelson', 'Wellington')
       OR CustName = 'Fun4All'
)
SELECT CustName, CustContact, CustEmail
FROM SelectedCustomers
ORDER BY CustName ASC, CustContact ASC;

-- Task 13: Create a view called vProductCustomer which joins the Customer, Order and 
-- OrderItem tables to return a list of all customers who have ordered any product 

-- Create the View
GO
CREATE VIEW vProductCustomer AS
SELECT 
    Customer.CustName,
    Customer.CustContact,
    OrderEntry.OrderID,
    OrderItem.ProductID
FROM Customer
JOIN OrderEntry ON Customer.CustID = OrderEntry.CustID
JOIN OrderItem ON OrderEntry.OrderID = OrderItem.OrderID;
GO

-- Query the View for customers who ordered the product 'RGAN01'
SELECT CustName, CustContact
FROM vProductCustomer
WHERE ProductID = 'RGAN01';

-- Task 14: Inserting data, creating view, and create another view that filters out customers with missing address

-- Insert Data
INSERT INTO Customer (CustID, CustName, CustPhone)
VALUES ('1000000006', 'Toys Emporium', '09-546-8552');

-- Create the vCustomerMailingLabel View
GO
CREATE VIEW vCustomerMailingLabel AS
SELECT 
    CustName,
    CustAddress,
    CustCity + ', ' + CustPhone AS [CityPhone]
FROM Customer;
GO

-- Make the query
SELECT * FROM vCustomerMailingLabel;

-- Create another view that filters out customers with missing addresses
GO
CREATE VIEW vCustomerMailingLabel_ValidOnly AS
SELECT 
    CustName,
    CustAddress,
    CustCity + ', ' + CustPhone AS [CityPhone]
FROM Customer
WHERE CustAddress IS NOT NULL AND CustCity IS NOT NULL;
GO

-- Make the query
SELECT * FROM vCustomerMailingLabel_ValidOnly;