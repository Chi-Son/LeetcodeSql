CREATE TABLE Customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE Orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(id),
    total_amount DECIMAL(10, 2)
);
CREATE TABLE Products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);
CREATE TABLE OrderItems (
    order_id INT REFERENCES Orders(id),
    product_id INT REFERENCES Products(id),
    quantity INT,
    PRIMARY KEY (order_id, product_id)
);
CREATE TABLE Employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT REFERENCES Employees(id)
);
INSERT INTO Customers (name) VALUES 
('Alice'),
('Bob'),
('Charlie'),
('David');
INSERT INTO Orders (customer_id, total_amount) VALUES 
(1, 150.00),
(1, 250.00),
(2, 300.00),
(3, 0.00);
INSERT INTO Products (name, price) VALUES 
('Laptop', 1000.00),
('Phone', 500.00),
('Mouse', 20.00),
('Keyboard', 50.00);
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES 
(1, 1, 1), 
(1, 3, 2), 
(2, 2, 1), 
(3, 2, 2), 
(3, 4, 1); 
INSERT INTO Employees (name, manager_id) VALUES 
('John', NULL),       
('Anna', 1),          
('Peter', 1),         
('Sophia', 2),        
('Tom', 2);           

