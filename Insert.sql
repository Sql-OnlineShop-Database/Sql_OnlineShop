-- Insert Products
INSERT INTO Products
VALUES (1, Null, 'milk', 10000, 'Choopan milk', 1);
INSERT INTO Products
VALUES (2, Null, 'milk', 10000, 'Mihan milk', 0);
INSERT INTO Products
VALUES (3, Null, 'cheese', 35000, 'pizza cheese', 1);
INSERT INTO Products
VALUES (
		4,
		Null,
		'Apple',
		34000,
		'Fresh and organic apple',
		1
	);
INSERT INTO Products
VALUES (
		5,
		Null,
		'Cocoa powder',
		80000,
		'Cocoa powder without sugar',
		0
	);
INSERT INTO Products
VALUES (
		6,
		Null,
		'Banana',
		36000,
		'Fresh and organic banana',
		1
	);
INSERT INTO Products
VALUES (
		7,
		Null,
		'Water',
		3000,
		'0.5 liter bottle of water',
		1
	);
INSERT INTO Products
VALUES (8, Null, 'Coke', 6000, '1.5 liter of coke', 1);
-- Insert Categories
INSERT INTO Categories
VALUES (1, 'Dairy');
INSERT INTO Categories
VALUES (2, 'Fruit');
INSERT INTO Categories
VALUES (3, 'Beverage');
INSERT INTO Categories
VALUES (4, 'Sweets');
Update Products
SET CategoryNumber = 1
WHERE ProductNumber = 1;
Update Products
SET CategoryNumber = 1
WHERE ProductNumber = 2;
Update Products
SET CategoryNumber = 1
WHERE ProductNumber = 3;
Update Products
SET CategoryNumber = 2
WHERE ProductNumber = 4;
Update Products
SET CategoryNumber = 4
WHERE ProductNumber = 5;
Update Products
SET CategoryNumber = 2
WHERE ProductNumber = 6;
Update Products
SET CategoryNumber = 3
WHERE ProductNumber = 7;
Update Products
SET CategoryNumber = 3
WHERE ProductNumber = 8;
-- Insert Customers
INSERT INTO Customers
VALUES (
		'Alirezai23',
		'Ali',
		'alirezai.1366@gmail.com',
		'ar1223344',
		09364563921,
		'Tehran, Niavaran, mohseni street, no 14',
		44568974
	);
INSERT INTO Customers
VALUES (
		'Rezajkl99',
		'Reza',
		'rezaaliary1523@gmail.com',
		'rezaali024',
		09021598963,
		'Tehran, Sadeqie, hashemi street, no 114',
		98556642
	);
INSERT INTO Customers
VALUES (
		'Sareh12',
		'Sareh',
		'saizadkhani@gmail.com',
		'sarehsareh00',
		09124239639,
		'Tehran, Mirdamad, Motahari street, no 96',
		66325614
	);
INSERT INTO Customers
VALUES (
		'gholizade_sb',
		'Javad',
		'javadarabi20@gmail.com',
		'ghlzo$%856',
		09123006588,
		'Tehran, Niavaran, payam street, no 4',
		12126359
	);
INSERT INTO Customers
VALUES (
		'shabnam1344',
		'Shabnam',
		'shabroyei@gmail.com',
		'shabnam1234',
		09164594218,
		'Tehran, Pirozi, 24th street, no 36',
		18195622
	);
INSERT INTO Customers
VALUES (
		'mohammadli79',
		'Mohammad',
		'mohamadddii.1369@yahoo.com',
		'mh98ds63',
		09395556695,
		'Tehran, Pirozi, 32th street, no 142',
		22145963
	);
INSERT INTO Customers
VALUES (
		'Danialsb22',
		'Danial',
		'Danialsb800@gmail.com',
		'00112233ds',
		09362424893,
		'Tehran, Saadatabad, Allame street, no 9',
		98563214
	);
INSERT INTO Customers
VALUES (
		'Hasanmia79',
		'Hasan',
		'Hasan.mir9856@yahoo.com',
		'hashas98$m',
		09198789633,
		'Tehran, Tehranpars, jeyhoni street, no 73',
		77636954
	);
-- Insert Admins
INSERT INTO Admin
VALUES('Alibr32', 'peril985063');
INSERT INTO Admin
VALUES('Danialsh82', 'ds9850363');
-- Insert Orders
INSERT INTO Orders
VALUES (
		1,
		'gholizade_sb',
		'2021-6-28 18:35:40',
		'Delivered',
		20000,
		0
	);
INSERT INTO Orders
VALUES (
		2,
		'Danialsb22',
		'2021-11-16 20:55:30',
		'Delivered',
		89000,
		0
	);
INSERT INTO Orders
VALUES (
		3,
		'Sareh12',
		'2021-10-28 11:32:00',
		'Delivered',
		58000,
		50
	);
INSERT INTO Orders
VALUES (
		4,
		'Hasanmia79',
		'2021-12-30 15:56:52',
		'Delivered',
		151000,
		0
	);
-- Insert Comments
INSERT INTO Comments
VALUES (
		4,
		5,
		'Hasanmia79',
		'Hasan',
		'One of the highest quality cocoa powder I have ever taste!',
		'2021-12-30 22:52:12'
	);
INSERT INTO Comments
VALUES (
		1,
		1,
		'Danialsb22',
		'Danial',
		'Milk was fresh',
		'2021-11-17 23:02:52'
	);
INSERT INTO Comments
VALUES (
		2,
		4,
		'Danialsb22',
		'Danial',
		'Apples were rotten, such a waste of money!',
		'2021-11-17 23:22:47'
	);
INSERT INTO Comments
VALUES (
		3,
		1,
		'Sareh12',
		'Sareh',
		'quite good, thanks!',
		'2021-11-2 10:11:34'
	);
INSERT INTO Comments
VALUES (
		5,
		8,
		'gholizade_sb',
		'Javad',
		'Everything was satisfactory',
		'2021-6-29 12:40:06'
	);
-- Insert Carts
INSERT INTO Carts
VALUES ('Danialsb22', 89000, 0);
INSERT INTO Carts
VALUES ('Sareh12', 58000, 5);
INSERT INTO Carts
VALUES ('Hasanmia79', 151000, 0);
INSERT INTO Carts
VALUES ('gholizade_sb', 20000, 0);
INSERT INTO Carts
VALUES ('shabnam1344', 169000, 12);
-- Insert CartProducts
INSERT INTO CartProducts
VALUES ('Danialsb22', 1);
INSERT INTO CartProducts
VALUES ('Danialsb22', 3);
INSERT INTO CartProducts
VALUES ('Danialsb22', 4);
INSERT INTO CartProducts
VALUES ('Sareh12', 6);
INSERT INTO CartProducts
VALUES ('Sareh12', 8);
INSERT INTO CartProducts
VALUES ('Sareh12', 3);
INSERT INTO CartProducts
VALUES ('Hasanmia79', 5);
INSERT INTO CartProducts
VALUES ('Hasanmia79', 3);
INSERT INTO CartProducts
VALUES ('gholizade_sb', 2);
INSERT INTO CartProducts
VALUES ('shabnam1344', 5);
INSERT INTO CartProducts
VALUES ('shabnam1344', 8);