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






