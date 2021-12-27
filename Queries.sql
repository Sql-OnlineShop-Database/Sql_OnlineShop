-- Order information for users "Danialsb22" and "Hasanmia79"
SELECT *
FROM Orders
WHERE Username IN ('Danialsb22', 'Hasanmia79')


-- Users who have not ordered yet.
Select *
From Customers
Where Not Exists (Select Username 
			FROM Orders		
			WHERE Customers.Username = Orders.Username)


-- Comments which have been added together with the name of the produts, product number, username and email. 
SELECT Customers.Username, Email, Comments.ProductNumber, Pname, CommentText
FROM Customers
INNER JOIN Comments 
ON Customers.Username = Comments.Username
INNER JOIN Products
ON Comments.ProductNumber = Products.ProductNumber;


-- name of products which are in the cart of the user "Sareh12".
SELECT Pname
FROM CartProducts
INNER JOIN Products
ON CartProducts.ProductNumber = Products.ProductNumber
Where Username = 'Sareh12'


-- Here are new queries
select * from Products  
where Availablity = 0 and  CategoryNumber = 3

-- Categories name for products that ordered by 'gholizade_sb' befor  '2021-06-28'
select DISTINCT Categories.CategoryName from Categories 
inner JOIN Products on Products.CategoryNumber = Categories.CategoryNumber
INNER JOIN OrderProducts on OrderProducts.ProductNumber = Products.ProductNumber
INNER JOIN Orders on Orders.OrderNumber = OrderProducts.OrderNumber
INNER JOIN Customers on Customers.Username = Orders.Username
WHERE Orders.OrderDate <= '2021-06-28 18:35:40.000' and Customers.Username = 'gholizade_sb'
 
-- ایممیل مشتریانی که بیشتر از 50 درصد تخیف گرفته اند و مبلغ سفارش ان ها کمتر از 60000 باشد
select Email from Orders 
INNER JOIN Customers on Orders.Username = Customers.Username
where Discount >= 50 and Price < 60000

-- مشتریانی که حداقل 1 سفارش بالای 10 تومان ثبت کرده اند به همراه تعداد سافرششان 
select count(*) as OrderCount,Username from Orders 
where Price > 10
GROUP BY Username
having  COUNT(*) >= 1