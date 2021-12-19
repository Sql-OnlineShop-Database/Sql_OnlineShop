CREATE TABLE Customer(
	Username VARCHAR(40) PRIMARY KEY,
	Cname VARCHAR(40) NOT NULL,
	Email VARCHAR(40),
	Password VARCHAR(40) NOT NULL,
	Phone INT,
	Address VARCHAR(60),
	PostCode INT UNIQUE,
);

CREATE TABLE Order1(
	OrderNumber INT PRIMARY KEY,
	Username VARCHAR(40),
	FOREIGN KEY (Username) REFERENCES Customer ON DELETE CASCADE,
	OrderDate TIMESTAMP,
	State1 VARCHAR(40),
	Price MONEY,
	Discount MONEY
);

CREATE TABLE Category(
	CategoryNumber INT PRIMARY KEY,
	CategoryName VARCHAR(40)
);

CREATE TABLE Product(
	ProductNumber INT PRIMARY KEY,
	CategoryNumber INT,
	FOREIGN KEY (CategoryNumber) REFERENCES Category ON DELETE CASCADE,
	Pname VARCHAR(40),
	Price MONEY,
	Details VARCHAR(60),
	Availablity BIT,
);

CREATE TABLE Comment(
	CommentNumber INT PRIMARY KEY,
	ProductNumber INT NOT NULL,
	FOREIGN KEY (ProductNumber) REFERENCES Product ON DELETE CASCADE,
	Username VARCHAR(40),
	FOREIGN KEY (Username) REFERENCES Customer ON DELETE CASCADE,
	Cname VARCHAR(40),
	CommentText VARCHAR(300),
	CommentDate TIMESTAMP
);

CREATE TABLE Cart(
	Username VARCHAR(40),
	FOREIGN KEY (Username) REFERENCES Customer ON DELETE CASCADE,
	Price MONEY,
	Discount MONEY
);

CREATE TABLE SubCategory(
	CategoryNumber INT PRIMARY KEY,
	FOREIGN KEY(CategoryNumber) REFERENCES Category ON DELETE CASCADE,
	SubCategoryNumber INT
);

CREATE TABLE CartProducts(
	Username VARCHAR(40) PRIMARY KEY,
	FOREIGN KEY (Username) REFERENCES Customer ON DELETE CASCADE,
	ProductNumber INT NOT NULL,
	FOREIGN KEY (ProductNumber) REFERENCES Product ON DELETE CASCADE
);

CREATE TABLE Admin(
	Username VARCHAR(40) PRIMARY KEY,
	Password VARCHAR(40)
);

