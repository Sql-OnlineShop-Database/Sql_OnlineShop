-- Insert Categories
INSERT INTO Categories(CategoryNumber, CategoryName, CategoryLevel)
VALUES (1, 'Nutrients', 1),
	(2, 'Dairy', 2),
	(3, 'Milk', 3),
	(4, 'Cheese', 3),
	(5, 'Yogurt', 3),
	(6, 'Grocery', 2),
	(7, 'Bread', 3),
	(8, 'Rice', 3),
	(9, 'Oil', 3),
	(10, 'Sugar', 3),
	(11, 'Beverage', 2),
	(12, 'Tea', 3),
	(13, 'Cofee', 3),
	(14, 'Water', 3),
	(15, 'Sweets', 2),
	(16, 'Fruit', 2),
	(17, 'Digital', 1),
	(18, 'Mobile', 2),
	(19, 'Samsung', 3),
	(20, 'Apple', 3),
	(21, 'Xiaomi', 3),
	(22, 'Laptop', 2),
	(23, 'Asus', 3),
	(24, 'Lenovo', 3),
	(25, 'Camera', 2),
	(26, 'HeadPhone', 2),
	(27, 'Hard Disk & USB & SSD ', 2),
	(28, 'Speaker', 2),
	(29, 'Book', 1),
	(30, 'Literature', 2),
	(31, 'Scientific', 2),
	(32, 'History', 2),
	(33, 'Religious', 2);
-- Connect Categories to their SubCategories
INSERT INTO SubCategories(CategoryNumber, SubCategoryNumber)
VALUES (1, 2),
	(1, 6),
	(1, 11),
	(1, 15),
	(1, 16),
	(2, 3),
	(2, 4),
	(2, 5),
	(6, 7),
	(6, 8),
	(6, 9),
	(6, 10),
	(11, 12),
	(11, 13),
	(11, 14),
	(17, 18),
	(17, 25),
	(17, 26),
	(17, 27),
	(17, 28),
	(18, 19),
	(18, 20),
	(18, 21),
	(22, 23),
	(22, 24),
	(29, 30),
	(29, 31),
	(29, 32),
	(29, 33);
-- Insert Products
INSERT INTO Products(
		ProductNumber,
		CategoryNumber,
		Pname,
		Price,
		Details,
		Availablity
	)
VALUES (1, Null, 'milk', 10000, 'Choopan milk', 1),
	(2, Null, 'milk', 10000, 'Mihan milk', 0),
	(3, Null, 'cheese', 35000, 'pizza cheese', 1),
	(
		4,
		Null,
		'Apple',
		34000,
		'Fresh and organic apple',
		1
	),
	(
		5,
		Null,
		'Cocoa powder',
		80000,
		'Cocoa powder without sugar',
		0
	),
	(
		6,
		Null,
		'Banana',
		36000,
		'Fresh and organic banana',
		1
	),
	(
		7,
		Null,
		'Water',
		3000,
		'0.5 liter bottle of water',
		1
	);
Update Products
SET CategoryNumber = 3
WHERE ProductNumber = 1;
Update Products
SET CategoryNumber = 3
WHERE ProductNumber = 2;
Update Products
SET CategoryNumber = 4
WHERE ProductNumber = 3;
Update Products
SET CategoryNumber = 16
WHERE ProductNumber = 4;
Update Products
SET CategoryNumber = 6
WHERE ProductNumber = 5;
Update Products
SET CategoryNumber = 16
WHERE ProductNumber = 6;
Update Products
SET CategoryNumber = 14
WHERE ProductNumber = 7;
-- Insert Customers
INSERT INTO Customers (
		Username,
		Cname,
		Email,
		Password,
		Phone,
		Address,
		PostCode
	)
VALUES (
		'Alirezai23',
		'Ali',
		'alirezai.1366@gmail.com',
		'ar1223344',
		09364563921,
		'Tehran, Niavaran, mohseni street, no 14',
		44568974
	),
	(
		'Rezajkl99',
		'Reza',
		'rezaaliary1523@gmail.com',
		'rezaali024',
		09021598963,
		'Tehran, Sadeqie, hashemi street, no 114',
		98556642
	),
	(
		'Sareh12',
		'Sareh',
		'saizadkhani@gmail.com',
		'sarehsareh00',
		09124239639,
		'Tehran, Mirdamad, Motahari street, no 96',
		66325614
	),
	(
		'gholizade_sb',
		'Javad',
		'javadarabi20@gmail.com',
		'ghlzo$%856',
		09123006588,
		'Tehran, Niavaran, payam street, no 4',
		12126359
	),
	(
		'shabnam1344',
		'Shabnam',
		'shabroyei@gmail.com',
		'shabnam1234',
		09164594218,
		'Tehran, Pirozi, 24th street, no 36',
		18195622
	),
	(
		'mohammadli79',
		'Mohammad',
		'mohamadddii.1369@yahoo.com',
		'mh98ds63',
		09395556695,
		'Tehran, Pirozi, 32th street, no 142',
		22145963
	),
	(
		'Danialsb22',
		'Danial',
		'Danialsb800@gmail.com',
		'00112233ds',
		09362424893,
		'Tehran, Saadatabad, Allame street, no 9',
		98563214
	),
	(
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
INSERT INTO Orders(
		OrderNumber,
		Username,
		OrderDate,
		OrderState,
		Price,
		Discount
	)
VALUES (
		1,
		'gholizade_sb',
		'2021-6-28 18:35:40',
		'Delivered',
		20000,
		0
	),
	(
		2,
		'Danialsb22',
		'2021-11-16 20:55:30',
		'Delivered',
		89000,
		0
	),
	(
		3,
		'Sareh12',
		'2021-10-28 11:32:00',
		'Delivered',
		58000,
		50
	),
	(
		4,
		'Hasanmia79',
		'2021-12-30 15:56:52',
		'Delivered',
		151000,
		0
	);
-- Insert Comments
INSERT INTO Comments(
		CommentNumber,
		ProductNumber,
		Username,
		Author,
		CommentText,
		CommentDate
	)
VALUES (
		4,
		5,
		'Hasanmia79',
		'Hasan',
		'One of the highest quality cocoa powder I have ever taste!',
		'2021-12-30 22:52:12'
	),
	(
		1,
		1,
		'Danialsb22',
		'Danial',
		'Milk was fresh',
		'2021-11-17 23:02:52'
	),
	(
		2,
		4,
		'Danialsb22',
		'Danial',
		'Apples were rotten, such a waste of money!',
		'2021-11-17 23:22:47'
	),
	(
		3,
		1,
		'Sareh12',
		'Sareh',
		'quite good, thanks!',
		'2021-11-2 10:11:34'
	),
	(
		5,
		7,
		'gholizade_sb',
		'Javad',
		'Everything was satisfactory',
		'2021-6-29 12:40:06'
	);
-- Insert Carts
INSERT INTO Carts(Username, Price, Discount)
VALUES ('Danialsb22', 89000, 0),
	('Sareh12', 58000, 5),
	('Hasanmia79', 151000, 0),
	('gholizade_sb', 20000, 0),
	('shabnam1344', 169000, 12);
-- Insert CartProducts
INSERT INTO CartProducts(Username, ProductNumber)
VALUES ('Danialsb22', 1),
	('Danialsb22', 3),
	('Danialsb22', 4),
	('Sareh12', 6),
	('Sareh12', 7),
	('Sareh12', 3),
	('Hasanmia79', 5),
	('Hasanmia79', 3),
	('gholizade_sb', 2),
	('shabnam1344', 5),
	('shabnam1344', 7);