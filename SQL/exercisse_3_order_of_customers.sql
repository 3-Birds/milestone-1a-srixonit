/*
Question 1: Total Orders Per Customer

Write a query to display the total number of orders placed by each customer, 
along with their name and the date they joined. Sort the results by the total number of orders in descending order.
*/

SELECT customer_name, join_date, COUNT(Orders.order_id) AS total_orders
FROM Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
GROUP BY Customers.customer_id, customer_name, join_date
ORDER BY total_orders DESC;


/*
Question 2: Rank Customers by Spending

For each customer, calculate their total spending (sum of the total amounts from the `Orders` table) 
and rank them by total spending within their respective country. 
Use a **window function** to rank the customers.
*/

SELECT customers.customer_id, customers.customer_name, customers.country,
    SUM(quantity * price) AS total_spending,
    RANK() OVER (PARTITION BY customers.country ORDER BY SUM(quantity * price) DESC) AS rank
FROM orderitems
JOIN orders ON orders.order_id = orderitems.order_id
JOIN customers ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.customer_name, customers.country
ORDER BY customers.country, rank;
