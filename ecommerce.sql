CREATE DATABASE ecommerce;
USE ecommerce;
SHOW DATABASES;
SHOW TABLES;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL
);

-- Create the Products table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE OrderDetails (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Customers (name, email, phone) VALUES
('John Doe', 'john.doe@example.com', '555-1234'),
('Jane Smith', 'jane.smith@example.com', '555-5678'),
('Emily Davis', 'emily.davis@example.com', '555-8765'),
('Michael Johnson', 'michael.johnson@example.com', '555-4321');

INSERT INTO Products (product_name, price, stock) VALUES
('Laptop', 999.99, 50),
('Smartphone', 499.99, 100),
('Headphones', 149.99, 200),
('Keyboard', 79.99, 150);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2024-08-01', 1149.98),  
(2, '2024-08-02', 579.98),   
(3, '2024-08-03', 229.98),   
(4, '2024-08-04', 79.99);    

INSERT INTO OrderDetails (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 999.99),  
(1, 3, 1, 149.99),  
(2, 2, 1, 499.99),  
(2, 4, 1, 79.99),   
(3, 3, 1, 149.99),  
(3, 4, 1, 79.99),   
(4, 4, 1, 79.99);   

