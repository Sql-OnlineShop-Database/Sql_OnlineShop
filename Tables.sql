CREATE TABLE Customers(
	Username VARCHAR(40),
	Cname VARCHAR(40) NOT NULL,
	Email VARCHAR(40),
	Password VARCHAR(40) NOT NULL,
	Phone BIGINT,
	Address TEXT,
	PostCode BIGINT,
	PRIMARY KEY(Username),
	UNIQUE(PostCode)
);
CREATE TABLE Orders(
	OrderNumber INT,
	Username VARCHAR(40) NOT NULL,
	OrderDate TIMESTAMP,
	OrderState VARCHAR(40),
	Price INT NOT NULL,
	Discount SMALLINT,
	PRIMARY KEY(OrderNumber),
	FOREIGN KEY (Username) REFERENCES Customers(Username) ON DELETE CASCADE ON UPDATE CASCADE,
	CHECK(
		Price >= 0
		AND Discount >= 0
		AND Discount <= 100
	)
);
CREATE TABLE Categories(
	CategoryNumber INT,
	CategoryName VARCHAR(40) NOT NULL,
	CategoryLevel INT NOT NULL,
	PRIMARY KEY(CategoryNumber),
	CHECK (CategoryLevel > 0)
);
CREATE TABLE Products(
	ProductNumber INT,
	CategoryNumber INT,
	Pname VARCHAR(40) NOT NULL,
	Price INT NOT NULL,
	Details TEXT,
	Availablity BOOLEAN NOT NULL,
	PRIMARY KEY(ProductNumber),
	FOREIGN KEY (CategoryNumber) REFERENCES Categories(CategoryNumber) ON DELETE CASCADE ON UPDATE CASCADE,
	CHECK(Price >= 0)
);
CREATE TABLE Comments(
	CommentNumber INT,
	ProductNumber INT NOT NULL,
	Username VARCHAR(40) NOT NULL,
	Author VARCHAR(40) NOT NULL,
	CommentText TEXT NOT NULL,
	CommentDate TIMESTAMP,
	PRIMARY KEY(CommentNumber),
	FOREIGN KEY (ProductNumber) REFERENCES Products(ProductNumber) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Username) REFERENCES Customers(Username) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Carts(
	Username VARCHAR(40),
	Price INT NOT NULL,
	Discount SMALLINT,
	PRIMARY KEY(Username),
	FOREIGN KEY (Username) REFERENCES Customers(Username) ON DELETE CASCADE ON UPDATE CASCADE,
	CHECK(
		Price >= 0
		AND Discount >= 0
		AND Discount <= 100
	)
);
CREATE TABLE SubCategories(
	CategoryNumber INT NOT NULL,
	SubCategoryNumber INT NOT NULL,
	PRIMARY KEY(CategoryNumber, SubCategoryNumber),
	FOREIGN KEY(CategoryNumber) REFERENCES Categories(CategoryNumber) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE CartProducts(
	Username VARCHAR(40) NOT NULL,
	ProductNumber INT NOT NULL,
	Quantity INT NOT NULL,
	PRIMARY KEY(Username, ProductNumber),
	FOREIGN KEY (Username) REFERENCES Customers(Username) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (ProductNumber) REFERENCES Products(ProductNumber) ON DELETE CASCADE ON UPDATE CASCADE,
	CHECK(Quantity > 0)
);
CREATE TABLE OrderProducts(
	OrderNumber INT NOT NULL,
	ProductNumber INT NOT NULL,
	Quantity INT NOT NULL,
	PRIMARY KEY(OrderNumber, ProductNumber),
	FOREIGN KEY (OrderNumber) REFERENCES Orders(OrderNumber) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (ProductNumber) REFERENCES Products(ProductNumber) ON DELETE CASCADE ON UPDATE CASCADE,
	CHECK(Quantity > 0)
);
CREATE TABLE Admin(
	Username VARCHAR(40),
	Password VARCHAR(40),
	PRIMARY KEY(Username)
);

-- Creating view
GO
CREATE VIEW Customers_Comments
AS
SELECT Comments.Username, Email, CommentText
From Customers, Comments
Where Customers.Username = Comments.Username;