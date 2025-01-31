CREATE DATABASE Book_store;

USE Book_store;

CREATE TABLE Books (
    book_id int PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE NOT NULL,
    Foreign Key (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT NOT NULL
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    Foreign Key (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    Foreign Key (Order_id) REFERENCES Orders(order_id),
    Foreign Key (book_id) REFERENCES Books(book_id)
);