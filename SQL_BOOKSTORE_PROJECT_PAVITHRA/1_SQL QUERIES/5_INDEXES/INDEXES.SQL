-- CREATE INDEXES FOR PERFORMANCE

-- Index 1: On Books title for faster search
CREATE INDEX idx_books_title ON Books(title);

-- Index 2: On Authors name for faster search
CREATE INDEX idx_authors_name ON Authors(name);

-- Index 3: On Customers email for faster login/search
CREATE INDEX idx_customers_email ON Customers(email);

-- Index 4: On Orders customer_id for faster order history lookup
CREATE INDEX idx_orders_customer ON Orders(customer_id);

-- Index 5: On Books price for faster filtering/sorting
CREATE INDEX idx_books_price ON Books(price);

-- Verify indexes created:
SELECT index_name, table_name FROM user_indexes WHERE table_name IN ('BOOKS','AUTHORS','CUSTOMERS','ORDERS');