-- ecommerce_db Data Manipulation Queries

-- =============================
-- INSERT QUERIES
-- =============================

-- Insert into Customers
INSERT INTO Customers (name, email, phone, address) 
VALUES ('John Doe', 'john@example.com', '9876543210', 'Delhi, India');

INSERT INTO Customers (name, email, address) 
VALUES ('Alice Smith', 'alice@example.com', 'Mumbai, India');  -- phone left NULL

-- Insert into Categories
INSERT INTO Categories (category_name) VALUES ('Electronics');
INSERT INTO Categories (category_name) VALUES ('Clothing');

-- Insert into Products
INSERT INTO Products (name, description, price, stock, category_id)
VALUES ('Smartphone', 'Android 5G phone', 25000.00, 50, 1);

INSERT INTO Products (name, description, price, stock, category_id)
VALUES ('T-Shirt', 'Cotton round-neck t-shirt', 499.00, 200, 2);

-- Insert into Orders
INSERT INTO Orders (customer_id, status)
VALUES (1, 'Confirmed');

-- Insert into OrderDetails
INSERT INTO OrderDetails (order_id, product_id, quantity, price)
VALUES (1, 1, 2, 25000.00);

-- Insert into Payments
INSERT INTO Payments (order_id, amount, method)
VALUES (1, 50000.00, 'Credit Card');

-- Insert into Cart
INSERT INTO Cart (customer_id, product_id, quantity)
VALUES (2, 2, 3);


-- =============================
-- UPDATE QUERIES
-- =============================

-- Update customer phone number
UPDATE Customers 
SET phone = '9123456789' 
WHERE customer_id = 2;

-- Update stock after purchase
UPDATE Products 
SET stock = stock - 2 
WHERE product_id = 1;

-- Update order status
UPDATE Orders 
SET status = 'Shipped' 
WHERE order_id = 1;

-- Update payment method
UPDATE Payments 
SET method = 'UPI' 
WHERE payment_id = 1;


-- =============================
-- DELETE QUERIES
-- =============================

-- Delete a customer’s cart items
DELETE FROM Cart 
WHERE customer_id = 2;

-- Delete a product (careful with foreign keys!)
DELETE FROM Products 
WHERE product_id = 2;

-- Delete an order detail
DELETE FROM OrderDetails 
WHERE order_detail_id = 1;

-- Delete an order
DELETE FROM Orders 
WHERE order_id = 1;
