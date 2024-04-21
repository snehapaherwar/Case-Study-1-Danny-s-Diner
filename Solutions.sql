USE dannys_diner;
SELECT * FROM sales;

DROP VIEW salesmenu;
CREATE VIEW salesmenu AS 
SELECT s.*, m.product_name, m.price
FROM sales s
JOIN menu m 
ON s.product_id = m.product_id;

# 1. What is the total amount each customer spent at the restaurant?

SELECT s.customer_id, SUM(m.price) AS total_spent
FROM sales s
JOIN menu m 
ON s.product_id = m.product_id
GROUP BY s.customer_id;

# 2. How many days has each customer visited the restaurant?
SELECT customer_id, COUNT(DISTINCT order_date) AS no_of_days_visited
FROM sales 
GROUP BY customer_id;

# 3. What was the first item from the menu purchased by each customer?
WITH cte AS (
SELECT s.*, m.product_name,
DENSE_RANK() OVER(PARTITION BY s.customer_id ORDER BY order_date) AS r1
FROM sales s
JOIN menu m 
ON s.product_id = m.product_id
)
SELECT customer_id, product_name
FROM cte 
WHERE r1 = 1
GROUP BY customer_id, product_name
ORDER BY customer_id, product_name;

# 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
SELECT m.product_name, COUNT(s.customer_id) AS no_of_times
FROM sales s
JOIN menu m 
ON s.product_id = m.product_id
GROUP BY m.product_name
ORDER BY no_of_times DESC
LIMIT 1;

# 5. Which item was the most popular for each customer?
WITH cte AS (
SELECT customer_id, product_name, COUNT(*) AS ordered_times
FROM salesmenu
GROUP BY customer_id, product_name
), 
cte2 AS (
SELECT *,
DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY ordered_times DESC) AS rank1
FROM cte
)
SELECT customer_id, product_name
FROM cte2 
WHERE rank1 = 1;

# A and C's popular dish is Ramen, whereas B has ordered all the dishes same no. of times so its difficult to figure our which one dish is 
# most popular.
 
# 6. Which item was purchased first by the customer after they became a member?
WITH cte AS (
SELECT s.customer_id, m2.product_name, s.order_date
FROM sales s 
JOIN members m 
ON s.customer_id = m.customer_id
JOIN menu m2 
ON s.product_id = m2.product_id
WHERE s.order_date >= m.join_date 
),
cte2 AS (
SELECT *,
RANK() OVER(PARTITION BY customer_id ORDER BY order_date) AS r1
FROM cte
)
SELECT customer_id, product_name AS first_ordered_product
FROM cte2 
WHERE r1 =1;

# After becoming member, A and B's first order are Curry and Sushi. C has not become a member yet.

# 7. Which item was purchased just before the customer became a member?
WITH cte AS (
SELECT s.customer_id, s.order_date, m2.product_name
FROM sales s 
JOIN members m 
ON s.customer_id = m.customer_id
JOIN menu m2 
ON s.product_id = m2.product_id
WHERE order_date < join_date
),
cte2 AS (
SELECT *,
RANK() OVER(PARTITION BY customer_id ORDER BY order_date DESC) AS R1
FROM cte
)
SELECT customer_id, product_name AS order_before_joining
FROM cte2
WHERE R1=1;

# A has ordered 2 dishes Sushi and Curry before joining. B has ordered Sushi just before joining as a member.

# 8. What is the total items and amount spent for each member before they became a member?
WITH cte AS (
SELECT s.customer_id, s.order_date, m2.product_name, m2.price
FROM sales s 
JOIN members m 
ON s.customer_id = m.customer_id
JOIN menu m2 
ON s.product_id = m2.product_id
WHERE order_date < join_date
)
SELECT customer_id, COUNT(*) AS no_of_dishes_ordered, SUM(price) AS amount_spent
FROM cte 
GROUP BY customer_id;

# A has ordered 2 dishes and spent amount of 25. Whereas, B has ordered 3 dishes and spent amount of 40 before 
# becoming a member.

# 9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
SELECT customer_id,
SUM(CASE 
WHEN product_name = "sushi" THEN price*20
ELSE price * 10
END) AS points
FROM salesmenu
GROUP BY customer_id;

# A has 860 points, wheras B has highest points of 940 and C has 360 points.

# 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, 
# not just sushi - how many points do customer A and B have at the end of January?
WITH cte AS (
SELECT s.*, m.join_date
FROM salesmenu s
JOIN members m 
ON s.customer_id = m.customer_id 
), 
cte2 AS (
SELECT customer_id,
SUM(CASE 
WHEN product_name = "sushi" THEN price*20
ELSE price * 10
END) AS before_joining_points
FROM cte
WHERE order_date < join_date 
GROUP BY customer_id
), 
cte3 AS (
SELECT customer_id,
SUM(price * 20) AS after_joining_points
FROM cte 
WHERE order_date >= join_date 
AND order_date < '2021-02-01'
GROUP BY customer_id
)
SELECT c2.customer_id, before_joining_points + after_joining_points AS total_points
FROM cte2 c2
JOIN cte3 c3
ON c2.customer_id = c3.customer_id;

# A has 1370 points and B has 940 points at the end of January.

# Bonus Questions:

/* 1. The following questions are related creating basic data tables that Danny and his team can use to quickly derive insights without 
needing to join the underlying tables using SQL. Recreate the following table output using the available data: */

CREATE TABLE customerinfo AS 
SELECT s.customer_id, s.order_date, m.product_name, m.price,
CASE 
WHEN m2.join_date IS NULL THEN 'N'
WHEN s.order_date < m2.join_date THEN 'N'
ELSE 'Y'
END AS member
FROM sales s
LEFT JOIN menu m 
ON s.product_id = m.product_id
LEFT JOIN members m2 
ON s.customer_id = m2.customer_id
ORDER BY s.customer_id, s.order_date, m.product_name;

SELECT * FROM customerinfo;

# 2. Danny also requires further information about the ranking of customer products, but he purposely does not need the ranking for 
# non-member purchases so he expects null ranking values for the records when customers are not yet part of the loyalty program.

SELECT customer_id, order_date, product_name, price, member,
DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY order_date) AS ranking
FROM customerinfo
WHERE member != 'N'
UNION ALL
SELECT customer_id, order_date, product_name, price, member, "null" AS ranking
FROM customerinfo
WHERE member = 'N'
ORDER BY customer_id, order_date;









