DELETE FROM Order_Details;
DELETE FROM Orders;
DELETE FROM Books;
DELETE FROM Customers;
DELETE FROM Authors;
DELETE FROM Genres;

COMMIT;

-- Genres - Statistics Theme
INSERT INTO Genres VALUES (1, 'Statistics');
INSERT INTO Genres VALUES (2, 'Mathematics');
INSERT INTO Genres VALUES (3, 'Data Science');
INSERT INTO Genres VALUES (4, 'Probability');
INSERT INTO Genres VALUES (5, 'Research Methods');
INSERT INTO Genres VALUES (6, 'Computer Science');

-- Authors - Real Statisticians + Indian Authors
INSERT INTO Authors VALUES (1, 'S.C. Gupta', 'Author of Fundamentals of Statistics');
INSERT INTO Authors VALUES (2, 'Pillai & Bhatt', 'Authors of Mathematical Statistics');
INSERT INTO Authors VALUES (3, 'Ronald Fisher', 'Father of Modern Statistics');
INSERT INTO Authors VALUES (4, 'David Freedman', 'Author of Statistical Models');
INSERT INTO Authors VALUES (5, 'C.R. Rao', 'Indian Statistician Legend');
INSERT INTO Authors VALUES (6, 'Anil K. Bera', 'Author of Econometrics');

-- Customers - Your Class Friends Names
INSERT INTO Customers VALUES (101, 'Pavitra M', 'pavitra.m@college.edu', '9876543210');
INSERT INTO Customers VALUES (102, 'Priya S', 'priya.s@college.edu', '9876543211');
INSERT INTO Customers VALUES (103, 'Lakshmi R', 'lakshmi@college.edu', '9876543212');
INSERT INTO Customers VALUES (104, 'Divya K', 'divya@college.edu', '9876543213');
INSERT INTO Customers VALUES (105, 'Keerthana M', 'keerthana@college.edu', '9876543214');
INSERT INTO Customers VALUES (106, 'Nithya P', 'nithya@college.edu', '9876543215');

-- Books - YOUR REQUESTED NAMES - Statistics Books
INSERT INTO Books VALUES (1, 'Fundamentals of Statistics', 1, 450.00, TO_DATE('2022-03-15','YYYY-MM-DD'), 1);
INSERT INTO Books VALUES (2, 'Mathematical Statistics', 2, 550.00, TO_DATE('2021-08-10','YYYY-MM-DD'), 1);
INSERT INTO Books VALUES (3, 'Statistical Methods', 3, 399.00, TO_DATE('2020-05-20','YYYY-MM-DD'), 1);
INSERT INTO Books VALUES (4, 'Probability Theory', 4, 480.00, TO_DATE('2019-11-12','YYYY-MM-DD'), 4);
INSERT INTO Books VALUES (5, 'Applied Multivariate Analysis', 5, 620.00, TO_DATE('2023-01-18','YYYY-MM-DD'), 2);
INSERT INTO Books VALUES (6, 'Introduction to Data Science', 6, 520.00, TO_DATE('2023-06-25','YYYY-MM-DD'), 3);
INSERT INTO Books VALUES (7, 'Sampling Techniques', 1, 380.00, TO_DATE('2022-09-30','YYYY-MM-DD'), 5);

-- Orders - Recent Dates
INSERT INTO Orders VALUES (1001, 101, TO_DATE('2024-11-20','YYYY-MM-DD'), 1000.00);
INSERT INTO Orders VALUES (1002, 102, TO_DATE('2024-12-01','YYYY-MM-DD'), 550.00);
INSERT INTO Orders VALUES (1003, 103, TO_DATE('2024-12-15','YYYY-MM-DD'), 879.00);
INSERT INTO Orders VALUES (1004, 101, TO_DATE('2025-01-10','YYYY-MM-DD'), 1100.00);
INSERT INTO Orders VALUES (1005, 104, TO_DATE('2025-02-05','YYYY-MM-DD'), 900.00);
INSERT INTO Orders VALUES (1006, 105, TO_DATE('2025-03-12','YYYY-MM-DD'), 830.00);

-- Order Details
INSERT INTO Order_Details VALUES (1001, 1, 1);
INSERT INTO Order_Details VALUES (1001, 2, 1);
INSERT INTO Order_Details VALUES (1002, 2, 1);
INSERT INTO Order_Details VALUES (1003, 3, 1);
INSERT INTO Order_Details VALUES (1003, 6, 1);
INSERT INTO Order_Details VALUES (1004, 4, 1);
INSERT INTO Order_Details VALUES (1004, 5, 1);
INSERT INTO Order_Details VALUES (1005, 1, 2);
INSERT INTO Order_Details VALUES (1006, 2, 1);
INSERT INTO Order_Details VALUES (1006, 7, 1);

COMMIT;
