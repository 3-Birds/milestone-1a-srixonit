DROP TABLE IF EXISTS OrderItems;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;


-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    join_date DATE,
    country VARCHAR(50)
);

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create OrderItems Table
CREATE TABLE OrderItems (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Insert Sample Data into Customers Table
INSERT INTO Customers (customer_id, customer_name, join_date, country) VALUES
(1, 'Alice Johnson', '2021-01-10', 'USA'),
(2, 'Bob Smith', '2021-02-15', 'Canada'),
(3, 'Charlie Lee', '2021-03-05', 'USA'),
(4, 'Diana Prince', '2021-04-25', 'Canada'),
(5, 'Eve Davis', '2021-05-30', 'USA');

-- Insert Sample Data into Orders Table
INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(101, 1, '2023-01-15'),
(102, 1, '2023-02-20'),
(103, 2, '2023-01-18'),
(104, 2, '2023-02-28'),
(105, 3, '2023-01-22'),
(106, 4, '2023-03-01'),
(107, 5, '2023-03-05'),
(108, 5, '2023-03-10');

-- Insert Sample Data into OrderItems Table
INSERT INTO OrderItems (item_id, order_id, product_name, quantity, price) VALUES
(1001, 101, 'Laptop', 1, 150.00),
(1002, 102, 'Monitor', 2, 100.00),
(1003, 103, 'Keyboard', 1, 25.00),
(1004, 103, 'Mouse', 2, 25.00),
(1005, 104, 'Headphones', 1, 75.00),
(1006, 104, 'Speakers', 1, 50.00),
(1007, 105, 'Smartphone', 2, 150.00),
(1008, 106, 'Charger', 1, 50.00),
(1009, 107, 'Tablet', 1, 500.00),
(1010, 108, 'Smartwatch', 3, 150.00);
