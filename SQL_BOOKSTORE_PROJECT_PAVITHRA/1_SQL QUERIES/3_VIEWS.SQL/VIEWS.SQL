--  CREATE 3 VIEWS AS PER PROJECT

-- View 1: Retrieve all books by a specific author (Author ID 1 = Chetan Bhagat)
CREATE OR REPLACE VIEW Books_By_Author AS
SELECT b.book_id, b.title, a.name AS author_name, b.price
FROM Books b JOIN Authors a ON b.author_id = a.author_id
WHERE a.author_id = 1;

-- View 2: Get total sales for each book
CREATE OR REPLACE VIEW Total_Sales_Per_Book AS
SELECT b.book_id, b.title, SUM(od.quantity) AS total_quantity_sold, 
       SUM(od.quantity * b.price) AS total_sales_amount
FROM Books b JOIN Order_Details od ON b.book_id = od.book_id
GROUP BY b.book_id, b.title;

-- View 3: List all customers with their order history
CREATE OR REPLACE VIEW Customer_Order_History AS
SELECT c.customer_id, c.name AS customer_name, o.order_id, o.order_date, o.total
FROM Customers c JOIN Orders o ON c.customer_id = o.customer_id;

-- To check views work, run these:
SELECT * FROM Books_By_Author;
SELECT * FROM Total_Sales_Per_Book;
SELECT * FROM Customer_Order_History;