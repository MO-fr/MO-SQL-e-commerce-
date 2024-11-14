INSERT INTO customers (first_name, last_name, email, phone, address, city, state, zip_code) VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Maple St', 'Springfield', 'IL', '62701');

-- Insert sample products
INSERT INTO products (name, description, price, stock_quantity) VALUES
('Laptop', '15-inch display, 8GB RAM, 256GB SSD', 799.99, 10),
('Smartphone', '6.1-inch screen, 128GB storage', 599.99, 20);

-- Insert a sample order
INSERT INTO orders (customer_id, status, total_amount) VALUES
(1, 'Pending', 1399.98);

-- Add items to the order_details table for the sample order
INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 799.99),
(1, 2, 1, 599.99);

