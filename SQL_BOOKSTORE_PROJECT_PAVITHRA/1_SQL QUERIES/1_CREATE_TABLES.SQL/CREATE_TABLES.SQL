-- PROJECT: Online Bookstore Database
-- STEP 2: CREATE TABLES

CREATE TABLE Genres (
    genre_id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL
);

CREATE TABLE Authors (
    author_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    bio VARCHAR2(300)
);

CREATE TABLE Customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    phone VARCHAR2(15)
);

CREATE TABLE Books (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(150) NOT NULL,
    author_id NUMBER,
    price NUMBER(10,2),
    publication_date DATE,
    genre_id NUMBER,
    CONSTRAINT fk_books_author FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    CONSTRAINT fk_books_genre FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Orders (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    order_date DATE DEFAULT SYSDATE,
    total NUMBER(10,2),
    CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
    order_id NUMBER,
    book_id NUMBER,
    quantity NUMBER NOT NULL,
    PRIMARY KEY (order_id, book_id),
    CONSTRAINT fk_od_order FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_od_book FOREIGN KEY (book_id) REFERENCES Books(book_id)
);