CREATE DATABASE IF NOT EXISTS demo_db;
USE demo_db;

-- Customer table
CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    zip VARCHAR(10)
);

-- Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

-- Product table
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    name VARCHAR(50),
    price FLOAT
);

-- Order item table
CREATE TABLE order_item (
    order_id INT,
    product_id INT,
    quantity INT
);

-- Insert sample data
INSERT INTO customer VALUES (1, 'Alice', '02115');
INSERT INTO customer VALUES (2, 'Bob', '10001');

INSERT INTO orders VALUES (101, 1, '2024-01-01');
INSERT INTO orders VALUES (102, 2, '2024-01-02');

INSERT INTO product VALUES (1, 'Pen', 2.5);
INSERT INTO product VALUES (2, 'Book', 10.0);

INSERT INTO order_item VALUES (101, 1, 2);
INSERT INTO order_item VALUES (101, 2, 1);
INSERT INTO order_item VALUES (102, 2, 3);
