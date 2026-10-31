--  REQUIRED SQL QUERIES (Requirement No. 6)

-- Query 1: Retrieve all books with their authors and genres
SELECT b.title, a.name AS author, g.name AS genre, b.price, b.publication_date
FROM Books b
JOIN Authors a ON b.author_id = a.author_id
JOIN Genres g ON b.genre_id = g.genre_id
ORDER BY b.title;

-- Query 2: Get top 5 best-selling books
SELECT b.title, SUM(od.quantity) AS total_sold
FROM Books b JOIN Order_Details od ON b.book_id = od.book_id
GROUP BY b.title
ORDER BY total_sold DESC
FETCH FIRST 5 ROWS ONLY;

-- Query 3: List all orders with order details and customer information
SELECT o.order_id, c.name AS customer_name, c.email, b.title AS book_title, 
       od.quantity, b.price, o.order_date, o.total
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Books b ON od.book_id = b.book_id
ORDER BY o.order_id;