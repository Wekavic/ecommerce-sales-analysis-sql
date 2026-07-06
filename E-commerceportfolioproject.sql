CREATE DATABASE portfolio_project;
USE portfolio_project;

SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.total_amount) AS total_revenue
FROM portfolio_project.portfolio_customers AS c
JOIN portfolio_project.portfolio_orders AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY total_revenue DESC
LIMIT 5;

SELECT
    p.product_id,
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold
FROM portfolio_project.portfolio_orders o
JOIN portfolio_project.portfolio_products p
    ON o.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY
    total_quantity_sold DESC
LIMIT 1;

SELECT
    c.city,
    SUM(o.total_amount) AS total_revenue
FROM portfolio_project.portfolio_customers c
JOIN portfolio_project.portfolio_orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.city
ORDER BY
    total_revenue DESC;
    
SELECT
    customer_id,
    customer_name,
    city,
    signup_date
FROM portfolio_project.portfolio_customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM portfolio_project.portfolio_orders
);

SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.total_amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(o.total_amount) DESC) AS customer_rank
FROM portfolio_project.portfolio_customers c
JOIN portfolio_project.portfolio_orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY
    customer_rank;
    
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.total_amount) AS total_spent,
    CASE
        WHEN SUM(o.total_amount) >= 20000 THEN 'VIP'
        WHEN SUM(o.total_amount) >= 5000 THEN 'Regular'
        ELSE 'Low Value'
    END AS customer_segment
FROM portfolio_project.portfolio_customers c
JOIN portfolio_project.portfolio_orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY
    total_spent DESC;
    
SELECT
    p.product_id,
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold
FROM portfolio_project.portfolio_orders o
JOIN portfolio_project.portfolio_products p
    ON o.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
HAVING SUM(o.quantity) > (
    SELECT AVG(product_sales)
    FROM (
        SELECT
            SUM(quantity) AS product_sales
        FROM portfolio_project.portfolio_orders
        GROUP BY product_id
    ) AS avg_sales
)
ORDER BY total_quantity_sold DESC;

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_revenue
FROM portfolio_project.portfolio_orders
GROUP BY
    DATE_FORMAT(order_date, '%Y-%m')
ORDER BY
    month;