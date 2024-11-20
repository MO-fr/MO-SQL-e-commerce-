SELECT order_id, order_date FROM orders WHERE customer_id = 1;

-- Retrieve all details for a specific order (order_id = 1), showing each product’s name, quantity, and price per item.
SELECT p.name, od.quantity, od.price
FROM order_details od
JOIN products p ON od.product_id = p.product_id
WHERE od.order_id = 1;

-- Update the stock in the `products` table after an order has been placed
UPDATE products p
JOIN order_details od ON p.product_id = od.product_id
SET p.stock_quantity = p.stock_quantity - od.quantity
WHERE od.order_id = 1;
