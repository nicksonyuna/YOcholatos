CREATE DATABASE YOcholatos
GO
USE YOcholatos
GO

DROP DATABASE YOcholatos

CREATE TABLE [MsStaff] (
	StaffID CHAR(5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(50) NOT NULL,
	StaffGender VARCHAR(10) CHECK (StaffGender IN ('Male', 'Female')) NOT NULL,
	StaffAddress VARCHAR(100) CHECK (StaffAddress LIKE '%Street') NOT NULL,
	StaffSalary INT NOT NULL,
	StaffDOB DATE NOT NULL,
	StaffPhone VARCHAR(25) NOT NULL
);

INSERT INTO MsStaff VALUES 
('ST001', 'Hugo Adalbert', 'Male', '2165 Shady Pines Street', '4100000', '2000-10-12', '0874688172'),
('ST002', 'Dante Oddmund', 'Male', '271 Ritter Street', '4250000', '1994-04-27', '083998382878'),
('ST003', 'Asep Gunawan', 'Male', '4579 Barfield Street', '5100000', '2000-11-07', '087500159512'),
('ST004', 'Ascelin Amable', 'Female', '2526 Quilly Street', '4200000', '1999-05-08', '0851992465927'),
('ST005', 'John Doe', 'Male', '123 Main Street', '5150000', '1989-07-18', '081234567890'),
('ST006', 'Jane Smith', 'Female', '753 Birch Street', '5800000', '1998-03-28', '086789012345'),
('ST007', 'David Johnson', 'Male', '246 Walnut Street', '4000000', '2000-05-02', '082345678901'),
('ST008', 'Emily Davis', 'Female', '321 Elm Street', '4300000', '1999-01-02', '087890123456'),
('ST009', 'Robert Brown', 'Male', '654 Maple Street', '5500000', '1991-02-01', '083456789012'),
('ST010', 'Olivia Taylor', 'Female', '456 Oak Street', '5600000', '1999-12-23', '088901234567')

CREATE TABLE [MsChocolateType] (
	ChocolateTypeID CHAR(5) PRIMARY KEY CHECK (ChocolateTypeID LIKE 'CT[0-9][0-9][0-9]'),
	ChocolateTypeName VARCHAR(50) NOT NULL
);

INSERT INTO MsChocolateType VALUES
('CT001', 'Crunchy'),
('CT002', 'MilkChoco'),
('CT003', 'Dark Choco'),
('CT004', 'White Choco'),
('CT005', 'Almond'),
('CT006', 'Dark Forest Choco'),
('CT007', 'Golden Choco'),
('CT008', 'Peanut Choco'),
('CT009', 'Mix'),
('CT010', 'Cookies and Cream')

CREATE TABLE [MsChocolate] (
	ChocolateID CHAR(5) PRIMARY KEY CHECK (ChocolateID LIKE 'CO[0-9][0-9][0-9]'),
	ChocolateTypeID CHAR(5) NOT NULL,
	ChocolateName VARCHAR(50) NOT NULL,
	Stock INT NOT NULL,
	Price FLOAT NOT NULL,
	FOREIGN KEY (ChocolateTypeID) REFERENCES MsChocolateType(ChocolateTypeID)
);

INSERT INTO MsChocolate VALUES 
('CO001', 'CT001', 'Crunchie', 200, 20000),
('CO002', 'CT005', 'Almonte', 100, 15000),
('CO003', 'CT010', 'Cooreo', 320, 17000),
('CO004', 'CT004', 'Vanill', 250, 18000),
('CO005', 'CT009', 'Mixx', 250, 18000),
('CO006', 'CT007', 'Divine Bliss', 230, 12000),
('CO007', 'CT003', 'Amaretto Temptation', 120, 22000),
('CO008', 'CT006', 'Midnight Moss', 300, 23000),
('CO009', 'CT002', 'Milky Way', 280, 21000),
('CO010', 'CT007', 'Heavenly Treats', 150, 24000),
('CO011', 'CT001', 'Honeycomb Crunch', 190, 20000),
('CO012', 'CT009', 'ChocoFusion', 210, 18000),
('CO013', 'CT004', 'Gourmet Delights', 160, 22000),
('CO014', 'CT010', 'Choco Paradise', 240, 17000),
('CO015', 'CT005', 'AlmondCraze', 140, 23000),
('CO016', 'CT009', 'Chocoa', 150, 25000)

CREATE TABLE [MsVendor] (
	VendorID CHAR(5) PRIMARY KEY CHECK (VendorID LIKE 'VE[0-9][0-9][0-9]'),
	VendorName VARCHAR(50) NOT NULL,
	VendorEmail VARCHAR(50) CHECK (VendorEmail LIKE '%@%.%') NOT NULL,
	VendorPhone VARCHAR(25) NOT NULL,
	VendorAddress VARCHAR(100) CHECK (VendorAddress LIKE '%Street') NOT NULL
);
INSERT INTO MsVendor VALUES 
('VE001', 'Muhammad Akbar', 'muhammad.akbar@gmail.com', '082242041206', '4367 Pineview Street'),
('VE002', 'Mukhidi Sutoyo', 'muksuto@gmail.com', '089753269226', '2343 Snowbird Street'),
('VE003', 'Dewi Kusuma', 'dewikusuma@gmail.com', '081234567890', '1234 Oakview Street'),
('VE004', 'Bambang Santoso', 'bambangsantoso@gmail.com', '089753269226', '5678 Pinehurst Street'),
('VE005', 'Ratna Mira', 'ratnasari@gmail.com', '081234567890', '9876 Willow Street'),
('VE006', 'Agus Setiawan', 'agussetiawan@gmail.com', '089753269226', '4567 Elmwood Street'),
('VE007', 'Sari Indah', 'sariindah@gmail.com', '081234567890', '3210 Birchview Street'),
('VE008', 'Andi Prasetyo', 'andiprasetyo@gmail.com', '089753269226', '6789 Cedar Street'),
('VE009', 'Siti Wahyuningsih', 'sitiwahyuningsih@gmail.com', '081234567890', '5432 Maple Street'),
('VE010', 'Rudi Hermawan', 'rudi.hermawan@gmail.com', '088765432109', '3210 Spruce Street')

CREATE TABLE [MsCustomer] (
	CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(50) NOT NULL,
	CustomerGender VARCHAR(10) CHECK (CustomerGender IN ('Male', 'Female')) NOT NULL,
	CustomerAddress VARCHAR(100) CHECK (CustomerAddress LIKE '%Street') NOT NULL,
	CustomerDOB DATE NOT NULL,
	CustomerPhone VARCHAR(25) NOT NULL
);

INSERT INTO MsCustomer VALUES 
('CU001', 'Jason Wira', 'Male', '2729 Essex Court Street', '2001-11-12', '08741391391'),
('CU002', 'Bagus Gabus', 'Male', '2233 Franklee Street', '1999-07-02', '088277744240'),
('CU003', 'Jennifer Susanto', 'Female', '1022 Rhode Island Street', '2004-05-22', '08301229299'),
('CU004', 'Adi Sucipto', 'Male', '233 Rardin Street', '2000-01-23', '08301228755'),
('CU005', 'Nadia Anggraini', 'Female', '4325 Lexington Street', '2003-09-15', '081234567890'),
('CU006', 'Rizky Pratama', 'Male', '1789 Jefferson Street', '2002-06-11', '082345678901'),
('CU007', 'Siti Rahmawati', 'Female', '2992 Roosevelt Street', '2005-04-25', '083456789012'),
('CU008', 'Budi Setiawan', 'Male', '5432 Adams Street', '2001-12-10', '084567890123'),
('CU009', 'Ratna Sari', 'Female', '6891 Madison Street', '2004-10-05', '085678901234'),
('CU010', 'Irfan Hidayat', 'Male', '1098 Monroe Street', '2003-07-21', '086789012345')


CREATE TABLE [PurchaseHeader] (
	PurchaseID CHAR(5) PRIMARY KEY CHECK (PurchaseID LIKE 'PU[0-9][0-9][0-9]'),
	StaffID CHAR(5) NOT NULL,
	VendorID CHAR(5) NOT NULL,
	PurchaseDate DATE NOT NULL,
	FOREIGN KEY (StaffID) REFERENCES MsStaff(StaffID),
	FOREIGN KEY (VendorID) REFERENCES MsVendor(VendorID)
);


INSERT INTO PurchaseHeader VALUES
('PU001', 'ST001', 'VE001', '2023-04-01'),
('PU002', 'ST001', 'VE003', '2022-03-12'),
('PU003', 'ST002', 'VE004', '2023-01-01'),
('PU004', 'ST003', 'VE001', '2023-02-17'),
('PU005', 'ST002', 'VE008', '2023-01-28'),
('PU006', 'ST004', 'VE009', '2018-03-05'),
('PU007', 'ST005', 'VE007', '2023-04-12'),
('PU008', 'ST006', 'VE003', '2023-02-05'),
('PU009', 'ST007', 'VE010', '2023-04-30'),
('PU010', 'ST008', 'VE005', '2023-03-18'),
('PU011', 'ST009', 'VE005', '2012-01-21'),
('PU012', 'ST010', 'VE002', '2023-03-26'),
('PU013', 'ST004', 'VE003', '2023-04-08'),
('PU014', 'ST006', 'VE006', '2023-02-12'),
('PU015', 'ST008', 'VE001', '2023-03-29'),
('PU016', 'ST001', 'VE008', '2023-04-15'),
('PU017', 'ST002', 'VE009', '2023-02-24'),
('PU018', 'ST003', 'VE010', '2023-01-06'),
('PU019', 'ST004', 'VE006', '2023-04-03'),
('PU020', 'ST005', 'VE008', '2023-03-11')

CREATE TABLE [PurchaseDetail] (
	PurchaseID CHAR(5) NOT NULL,
	ChocolateID CHAR(5) NOT NULL,
	QuantityPurchase INT NOT NULL,
	PRIMARY KEY(PurchaseID, ChocolateID),
	FOREIGN KEY (PurchaseID) REFERENCES PurchaseHeader(PurchaseID),
	FOREIGN KEY (ChocolateID) REFERENCES MsChocolate(ChocolateID)
);

INSERT INTO PurchaseDetail VALUES
('PU001', 'CO002', 190),
('PU001', 'CO001', 80),
('PU002', 'CO004', 180),
('PU002', 'CO010', 110),
('PU003', 'CO003', 170),
('PU003', 'CO012', 180),
('PU004', 'CO005', 120),
('PU004', 'CO004', 100),
('PU005', 'CO001', 150),
('PU005', 'CO003', 130),
('PU006', 'CO002', 180),
('PU006', 'CO009', 140),
('PU007', 'CO006', 100),
('PU007', 'CO015', 130),
('PU008', 'CO003', 90),
('PU008', 'CO001', 60),
('PU008', 'CO004', 90),
('PU009', 'CO014', 90),
('PU009', 'CO008', 95),
('PU010', 'CO002', 68),
('PU010', 'CO007', 70),
('PU011', 'CO001', 110),
('PU011', 'CO010', 100),
('PU012', 'CO005', 134),
('PU012', 'CO002', 145),
('PU013', 'CO011', 72),
('PU013', 'CO001', 83),
('PU014', 'CO006', 58),
('PU014', 'CO005', 150),
('PU015', 'CO002', 92),
('PU015', 'CO008', 81),
('PU016', 'CO014', 122),
('PU016', 'CO013', 102)

CREATE TABLE [TransactionHeader] (
	TransactionID CHAR(5) PRIMARY KEY CHECK (TransactionID LIKE 'SL[0-9][0-9][0-9]'),
	StaffID CHAR(5) NOT NULL,
	CustomerID CHAR(5) NOT NULL,
	TransactionDate DATE NOT NULL,
	FOREIGN KEY (StaffID) REFERENCES MsStaff(StaffID),
	FOREIGN KEY (CustomerID) REFERENCES MsCustomer(CustomerID)
);

INSERT INTO TransactionHeader VALUES 
('SL001', 'ST002', 'CU004', '2020-09-06'),
('SL002', 'ST010', 'CU005', '2020-06-05'),
('SL003', 'ST007', 'CU010', '2021-03-15'),
('SL004', 'ST004', 'CU007', '2022-11-20'),
('SL005', 'ST006', 'CU009', '2022-08-10'),
('SL006', 'ST009', 'CU008', '2023-02-18'),
('SL007', 'ST003', 'CU002', '2022-05-01'),
('SL008', 'ST008', 'CU001', '2021-09-25'),
('SL009', 'ST005', 'CU004', '2023-01-07'),
('SL010', 'ST001', 'CU006', '2022-07-14'),
('SL011', 'ST002', 'CU010', '2023-04-03'),
('SL012', 'ST010', 'CU003', '2022-12-29'),
('SL013', 'ST006', 'CU004', '2023-03-12'),
('SL014', 'ST007', 'CU009', '2021-11-18'),
('SL015', 'ST004', 'CU002', '2022-09-07'),
('SL016', 'ST009', 'CU003', '2023-05-26'),
('SL017', 'ST003', 'CU010', '2022-02-09'),
('SL018', 'ST008', 'CU001', '2021-07-22'),
('SL019', 'ST005', 'CU006', '2022-04-05'),
('SL020', 'ST001', 'CU008', '2023-01-30')

CREATE TABLE [TransactionDetail] (
	TransactionID CHAR(5)  NOT NULL,
	ChocolateID CHAR(5) NOT NULL,
	QuantityTransaction INT NOT NULL,
	PRIMARY KEY(TransactionID, ChocolateID),
	FOREIGN KEY (TransactionID) REFERENCES TransactionHeader(TransactionID),
	FOREIGN KEY (ChocolateID) REFERENCES MsChocolate(ChocolateID)
);

INSERT INTO TransactionDetail VALUES
('SL001', 'CO011', 9),
('SL001', 'CO015', 2),
('SL002', 'CO006', 4),
('SL002', 'CO001', 23),
('SL003', 'CO015', 27),
('SL003', 'CO007', 2),
('SL004', 'CO014', 27),
('SL004', 'CO001', 6),
('SL005', 'CO014', 21),
('SL005', 'CO003', 28),
('SL006', 'CO015', 4),
('SL006', 'CO002', 9),
('SL007', 'CO015', 26),
('SL007', 'CO004', 16),
('SL008', 'CO007', 17),
('SL008', 'CO005', 20),
('SL009', 'CO002', 17),
('SL009', 'CO005', 20),
('SL010', 'CO010', 9),
('SL010', 'CO004', 15),
('SL011', 'CO012', 14),
('SL011', 'CO014', 8),
('SL012', 'CO002', 5),
('SL012', 'CO009', 24),
('SL013', 'CO004', 3),
('SL013', 'CO005', 26),
('SL014', 'CO014', 27),
('SL014', 'CO010', 2),
('SL015', 'CO005', 26),
('SL015', 'CO002', 21),
('SL016', 'CO016', 11)

SELECT*FROM MsStaff
SELECT*FROM PurchaseHeader
SELECT*FROM PurchaseDetail
SELECT*FROM MsChocolate
SELECT*FROM MsChocolateType
SELECT*FROM TransactionHeader
SELECT*FROM TransactionDetail
SELECT*FROM MsCustomer
SELECT*FROM MsVendor

--SOAL QUERY

--1.Display StaffID, StaffGender, Staff First Name (obtained from the first word of StaffName), and Total Purchase Made 
-- (obtained from the total purchases count made by staff) for each StaffGender equals to Female and Total purchase made is greater than 2.

SELECT ms.StaffID, StaffGender, SUBSTRING(StaffName, 1, CHARINDEX(' ', StaffName)) AS 'Staff First Name', COUNT(PurchaseID) AS 'Total Purchase Made'
FROM MsStaff ms JOIN PurchaseHeader ph
ON ms.StaffID = ph.StaffID
WHERE StaffGender = 'Female'
GROUP BY ms.StaffID, StaffGender, StaffName
HAVING COUNT(PurchaseID) > 2

--2.Display Chocolate ID (obtained by replacing 'CO' with 'CHOCO ' from ChocolateID), StaffID, Chocolate Type Name 
-- (obtained from ChocolateTypeName in upper case format), and Total Items Sold (obtained from the total of Quantity) 
-- for each “Mix” , “Crunchy”, “Cookies and Cream” Chocolate Type Name  and Total Items Sold must be greater than 5.

SELECT REPLACE(mc.CHOCOLATEID, 'CO', 'CHOCO') AS 'Chocolate ID', StaffID, UPPER(ChocolateTypeName) AS 'Chocolate Type Name', SUM(QuantityTransaction) AS 'Total Items Sold'
FROM MsChocolateType ctn JOIN MsChocolate mc 
ON ctn.ChocolateTypeID = mc.ChocolateTypeID 
JOIN TransactionDetail td
ON mc.ChocolateID = td.ChocolateID
JOIN TransactionHeader th
ON td.TransactionID = th.TransactionID
WHERE ChocolateTypeName IN ('Mix', 'Crunchy', 'Cookies and Cream')
GROUP BY mc.ChocolateID, StaffID, ChocolateTypeName
HAVING SUM(QuantityTransaction) > 5

--3.Display Customer Last Name (obtained from last word of CustomerName), CustomerGender, Total Chocolate Purchased 
-- (obtained from total of quantity), and Average Chocolate Sold (obtained from multiplying quantity and chocolate price) 
-- for each CustomerGender equals to Female and Total Chocolate Purchased is greater than 10.

SELECT SUBSTRING(CustomerName, CHARINDEX(' ', CustomerName)+ 1, LEN(CustomerName)) AS 'Customer Last Name', CustomerGender, SUM(QuantityTransaction) AS 'Total Chocolate Purchased', AVG(QuantityTransaction*Price) AS 'Average Chocolate Sold'
FROM MsCustomer mc JOIN TransactionHeader th
ON mc.CustomerID = th.CustomerID
JOIN TransactionDetail td
ON th.TransactionID = td.TransactionID
JOIN MsChocolate mch
ON td.ChocolateID = mch.ChocolateID
WHERE CustomerGender = 'Female'
GROUP BY CustomerName, CustomerGender
HAVING SUM(QuantityTransaction) > 10

--4.Display VendorID, Vendor Email (obtained from VendorEmail in uppercase format), Vendor Name (obtained from VendorName ends with ' Vendor'), Total Chocolate Sold 
-- (obtained from total of Quantity), and Minimum Chocolate Sold (obtained from minimum of Quantity) 
-- for each Total Chocolate Sold greater than 5 and Length of VendorName is greater than 10

SELECT mv.VendorID, UPPER(VendorEmail) AS 'Vendor Email', CONCAT(VendorName, ' Vendor') AS 'Vendor Name', SUM(QuantityPurchase) AS 'Total Chocolate Sold', MIN(QuantityPurchase) AS 'Minimum Chocolate Sold'
FROM MsVendor mv JOIN PurchaseHeader ph
ON mv.VendorID = ph.VendorID
JOIN PurchaseDetail pd
ON ph.PurchaseID = pd.PurchaseID
WHERE LEN(VendorName) > 10
GROUP BY mv.VendorID, VendorEmail, VendorName
HAVING SUM(QuantityPurchase) > 5

--5.Display Vendor ID (obtained by replacing ‘VE’ with ‘Vendor ’ from VendorID), Purchase Day (obtained from the day of PurchaseDate), 
-- and Quantity for each transaction that occurs after the 9th day and Quantity is greater than the average of all purchasing quantity.
-- (ALIAS SUBQUERY)

SELECT
  REPLACE(mv.VendorID, 'VE', 'Vendor ') AS 'Vendor ID', DATENAME(dw, PurchaseDate) AS 'Purchase Day', QuantityPurchase
FROM(
  MsVendor mv
  JOIN purchaseheader ph ON mv.VendorID = ph.VendorID
  JOIN purchasedetail pd ON ph.PurchaseID = pd.PurchaseID
  JOIN (
    SELECT AVG(QuantityPurchase) AS AvgQuantity
    FROM PurchaseDetail
  ) AS average ON pd.QuantityPurchase > average.AvgQuantity)
WHERE
  DATENAME(day, ph.PurchaseDate) > 9

--6.Display Invoice Number (obtained by adding ‘Invoice ’ with digit of SalesID as integer from SalesID), Sales Date, ChocolateName, ChocolateTypeName, 
-- ChocolatePrice for each transaction where ChocolateTypeName is equal to ‘Mix’ and ChocolatePrice is greater than the average of all chocolate price.

SELECT 'Invoice ' + CAST(th.TransactionID AS VARCHAR) AS 'Invoice Number', TransactionDate, ChocolateName, ChocolateTypeName, Price AS ChocolatePrice
FROM TransactionHeader th JOIN TransactionDetail td 
ON th.TransactionID = td.TransactionID
JOIN MsChocolate mc ON td.ChocolateID = mc.ChocolateID
JOIN MsChocolateType ct ON mc.ChocolateTypeID = ct.ChocolateTypeID
WHERE ct.ChocolateTypeName = 'Mix'
AND Price > (
	SELECT AVG(Price) 
	FROM MsChocolate
)

--7.Display PurchaseID, StaffID, Staff Name (obtained from StaffName in lowercase format), Purchase Date (obtained from PurchaseDate in 'dd/mm/yyyy' format), 
-- and Total Expenses (obtained from the total of multiplying ChocolatePrice and Quantity, starts with 'Rp. ') 
-- for each Total Expenses greater than the average expense (obtained from the average of multiplying ChocolatePrice and Quantity) and Purchase Date must be greater than 2019.
-- ALIAS SUBQUERY

SELECT ph.PurchaseID, ms.StaffID, LOWER(StaffName) AS 'Staff Name', CONVERT(Varchar, PurchaseDate, 103) AS 'Purchase Date', SUM(Price*QuantityPurchase) AS 'Total Expenses'
FROM MsStaff ms JOIN PurchaseHeader ph
ON ms.StaffID = ph.StaffID
JOIN PurchaseDetail pd
ON ph.PurchaseID = pd.PurchaseID
JOIN MsChocolate mc
ON pd.ChocolateID = mc.ChocolateID
GROUP BY ph.PurchaseID, ms.StaffID, StaffName, PurchaseDate
HAVING YEAR(PurchaseDate) > 2019 AND SUM(Price*QuantityPurchase) > 
(
	SELECT AVG(TotalExpenses) AS AverageExpenses
FROM (
	SELECT ph.PurchaseID, ms.StaffID, LOWER(StaffName) AS 'Staff Name', CONVERT(Varchar, PurchaseDate, 103) AS 'Purchase Date', SUM(Price * QuantityPurchase) AS TotalExpenses
	FROM MsStaff ms JOIN PurchaseHeader ph
	ON ms.StaffID = ph.StaffID
	JOIN PurchaseDetail pd
	ON ph.PurchaseID = pd.PurchaseID
	JOIN MsChocolate mc
	ON pd.ChocolateID = mc.ChocolateID
	GROUP BY ph.PurchaseID, ms.StaffID, StaffName, PurchaseDate
) AS X)

--8.Display Sales Number (Obtained from digit number of SalesID as integer), StaffID, Sales Month (obtained from the name of the month of SalesDate), 
-- and Total Revenue (obtained from the total of multiplying ChocolatePrice and Quantity) 
-- for each transaction that occurs before November and ChocolatePrice is greater than the average of all chocolate price.
-- ALIAS SUBQUERY

SELECT SUBSTRING(th.TransactionID, CHARINDEX('L', th.TransactionID) + 1, LEN(th.TransactionID)) AS 'Sales Number', ms.StaffID, DATENAME(MONTH, TransactionDate) AS 'Sales Month', SUM(Price*QuantityTransaction) AS 'Total Revenue'
FROM MsStaff ms JOIN TransactionHeader th
ON ms.StaffID = th.StaffID
JOIN TransactionDetail td
ON th.TransactionID = td.TransactionId
JOIN MsChocolate mc
ON td.ChocolateID = mc.ChocolateID
GROUP BY th.TransactionID, ms.StaffID, TransactionDate
HAVING MONTH(TransactionDate) < 11 AND SUM(Price*QuantityTransaction) > 
(
	SELECT AVG(TotalSales) AS AverageSales
FROM (
	SELECT SUBSTRING(th.TransactionID, CHARINDEX('L', th.TransactionID) + 1, LEN(th.TransactionID)) AS 'Sales Number', ms.StaffID, DATENAME(MONTH, TransactionDate) AS 'Sales Month', SUM(Price * QuantityTransaction) AS TotalSales
	FROM MsStaff ms JOIN TransactionHeader th
	ON ms.StaffID = th.StaffID
	JOIN TransactionDetail td
	ON th.TransactionID = td.TransactionID
	JOIN MsChocolate mc
	ON td.ChocolateID = mc.ChocolateID
	GROUP BY th.TransactionID, ms.StaffID, StaffName, TransactionDate
) AS X)

--9.Create a view named 'Vendor Max Transaction View' to display Vendor Number (obtained by replacing 'VE' with 'Vendor ' from VendorID), VendorName, 
-- Total Transaction Made (obtained from the total transaction made count), Maximum Quantity (obtained from maximum of Quantity) 
-- for each even digit number of VendorID and Maximum Quantity must be greater than 12.

CREATE VIEW [Vendor Max Transaction View] AS
SELECT REPLACE(mv.VendorID, 'VE', 'Vendor ') AS 'Vendor Number', VendorName, COUNT(ph.PurchaseID) AS 'Total Transaction Made', MAX(QuantityPurchase) AS 'Maximum Quantity'
FROM MsVendor mv JOIN PurchaseHeader ph
ON mv.VendorID = ph.VendorID
JOIN PurchaseDetail pd
ON ph.PurchaseID = pd.PurchaseID
GROUP BY mv.VendorID, VendorName
HAVING CAST(REPLACE(mv.VendorID, 'VE', '') AS INT) % 2 = 0 AND MAX(QuantityPurchase) > 12

--10.Create view named 'Chocolate Minimum Transaction View' to display SalesID, SalesDate (obtained from SalesDate in 'dd/mm/yyyy' format), StaffName, StaffGender, 
-- Minimum Chocolate Sold (obtained from minimum of Quantity), and Total Chocolate Sold (obtained from total of Quantity) 
-- for SalesDate that occurs after 2020 and ChocolatePrice is greater than 10000.

CREATE VIEW [Chocolate Minimum Transaction View] AS
SELECT th.TransactionID, CONVERT(Varchar, TransactionDate, 103) AS SalesDate, StaffName, StaffGender, MIN(QuantityTransaction) AS 'Minimum Chocolate Sold', SUM(QuantityTransaction) AS 'Total Chocolate Sold'
FROM MsStaff ms JOIN TransactionHeader th
ON ms.StaffID = th.StaffID
JOIN TransactionDetail td
ON th.TransactionID = td.TransactionID
JOIN MsChocolate mc
ON td.ChocolateID = mc.ChocolateID
GROUP BY th.TransactionID, TransactionDate, StaffName, StaffGender
HAVING YEAR(TransactionDate) > 2020

	  
	





