INSERT INTO Product
	VALUES
	(1, Null, 'milk', 10000, 'Choopan milk', 1),
	(2, Null, 'milk', 10000, 'Mihan milk', 0),
	(3, Null, 'cheese', 35000, 'pizza cheese', 1),
	(4, Null, 'Apple', 34000, 'Fresh and organic apple', 1),
	(5, Null, 'Cocoa powder', 80000, 'Cocoa powder without sugar', 0),
	(6, Null, 'Banana', 36000, 'Fresh and organic banana', 1),
	(7, Null, 'Water', 3000, '0.5 liter bottle of water', 1),
	(8, Null, 'Coke', 6000, '1.5 liter of coke', 1);

INSERT INTO Category
	VALUES
	(1, 'Dairy'),
	(2, 'Fruit'),
	(3, 'Beverage'),
	(4, 'Sweets');

Update Product
SET CategoryNumber = 1
WHERE ProductNumber = 1;

Update Product
SET CategoryNumber = 1
WHERE ProductNumber = 2;

Update Product
SET CategoryNumber = 1
WHERE ProductNumber = 3;

Update Product
SET CategoryNumber = 2
WHERE ProductNumber = 4;

Update Product
SET CategoryNumber = 4
WHERE ProductNumber = 5;

Update Product
SET CategoryNumber = 2
WHERE ProductNumber = 6;

Update Product
SET CategoryNumber = 3
WHERE ProductNumber = 7;

Update Product
SET CategoryNumber = 3
WHERE ProductNumber = 8;

INSERT INTO Customer
	VALUES
	('Alirezai23', 'Ali', 'alirezai.1366@gmail.com', 'ar1223344', 09364563921, 'Tehran, Niavaran, mohseni street, no 14', 44568974),
	('Rezajkl99', 'Reza', 'rezaaliary1523@gmail.com', 'rezaali024', 09021598963, 'Tehran, Sadeqie, hashemi street, no 114', 98556642),
	('Sareh12', 'Sareh', 'saizadkhani@gmail.com', 'sarehsareh00', 09124239639, 'Tehran, Mirdamad, Motahari street, no 96', 66325614),
	('gholizade_sb', 'Javad', 'javadarabi20@gmail.com', 'ghlzo$%856', 09123006588, 'Tehran, Niavaran, payam street, no 4', 12126359),
	('shabnam1344', 'Shabnam', 'shabroyei@gmail.com', 'shabnam1234', 09164594218, 'Tehran, Pirozi, 24th street, no 36', 18195622),
	('mohammadli79', 'Mohammad', 'mohamadddii.1369@yahoo.com', 'mh98ds63', 09395556695, 'Tehran, Pirozi, 32th street, no 142', 22145963),
	('Danialsb22', 'Danial', 'Danialsb800@gmail.com', '00112233ds', 09362424893, 'Tehran, Saadatabad, Allame street, no 9', 98563214),
	('Hasanmia79', 'Hasan', 'Hasan.mir9856@yahoo.com', 'hashas98$m', 09198789633, 'Tehran, Tehranpars, jeyhoni street, no 73', 77636954);


INSERT INTO Admin
VALUES('Alibr32', 'peril985063');

INSERT INTO Admin
VALUES('Danialsh82', 'ds9850363');

INSERT INTO Order1
	VALUES
	(1, 'gholizade_sb', '6/28/2021 18:35:40', 'Delivered', 20000, 0),
	(2, 'Danialsb22', '11/16/2021 20:55:30', 'Delivered', 89000, 0),
	(3, 'Sareh12', '10/28/2021 11:32:00', 'Delivered', 58000, 5000),
	(4, 'Hasanmia79', '12/30/2021 15:56:52', 'Delivered', 151000, 0);