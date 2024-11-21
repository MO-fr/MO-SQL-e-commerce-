-- Join orders and customers to get order details with customer info
SELECT o.order_id, o.order_date, c.first_name, c.last_name, o.status, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Join order_items, orders, and products to get order line items
SELECT oi.order_item_id, o.order_date, c.first_name, c.last_name, p.name AS product_name, oi.quantity, oi.price
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON oi.product_id = p.product_id;

-- Aggregate total revenue per customer
SELECT c.first_name, c.last_name, SUM(o.total_amount) AS total_revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id;

-- Calculate the total revenue
SELECT SUM(total_amount) AS total_revenue FROM orders;

-- Calculate the average order value
SELECT AVG(total_amount) AS average_order_value FROM orders;

-- Count the number of orders per customer
SELECT c.first_name, c.last_name, COUNT(o.order_id) AS order_count
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id;
