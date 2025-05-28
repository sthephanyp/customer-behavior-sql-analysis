--1. How many unique customers do we have?

select count(distinct customer_id) 
from customers;

--2.How many customer have places at least one order?

select count(distinct customer_id)
from orders;

--3.Which customer has spent the most money overall?

SELECT c.name, SUM(oi.quantity * p.price) AS total_spent
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id 
JOIN orders o ON oi.order_id = o.order_id      
JOIN customers c ON o.customer_id = c.customer_id 
GROUP BY c.name                                  
ORDER BY total_spent DESC                       
LIMIT 1;                                         

--4.What is the average order value per customer?

SELECT  c.name, ROUND(AVG(order_totals.total_amount), 2) AS avg_order_value
FROM  customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN ( SELECT  oi.order_id,
              SUM(oi.quantity * p.price) AS total_amount
             FROM  order_items oi
              JOIN products p ON oi.product_id = p.product_id
             GROUP BY  oi.order_id
              ) AS order_totals ON o.order_id = order_totals.order_id
GROUP BY  c.name
ORDER BY  avg_order_value DESC;

--5.What month had the highest number of order?

SELECT  TO_CHAR(order_date, 'Month') AS month, COUNT(*) AS total_orders
FROM orders
GROUP BY TO_CHAR(order_date, 'Month'),
EXTRACT(MONTH FROM order_date)
ORDER BY total_orders DESC
LIMIT 1;

--6.What are the top 3 best-selling products by quantity?

SELECT p.name AS product_name,SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_quantity_sold DESC
LIMIT 3;

--7.Which product category is the most profitable overall?

SELECT p.category,ROUND(SUM(oi.quantity * p.price), 2) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC
LIMIT 1;

