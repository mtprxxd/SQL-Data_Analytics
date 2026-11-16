USE MyDatabase

-----------JOINS---------------

----------------------------INNER JOIN-------------------------------
--SELECT*
--FROM A
--INNER JOIN B;
--ON <condition>
--TASK 1--get all the customers along with their orders, but only the customers who have placed the orders.
--SELECT
--c.id,
--c.first_name,
--o.order_id,
--o.customer_id
--FROM customers AS c
--INNER JOIN orders AS o
--ON c.id = o.customer_id;

-------------------------LEFT JOIN----------------------------------------
--TASK 2--Get all the customers along with their orders,including those without orders
--SELECT*
--FROM customers
--SELECT*
--FROM orders
--SELECT
--c.id,
--c.first_name,
--o.customer_id
--FROM orders AS o
--LEFT JOIN customers AS c
--ON c.id = o.customer_id;

--TASK 3--Get all the customers along with their orders,including orders without matching customers
SELECT*
FROM customers
SELECT*
FROM orders
SELECT
c.id,
c.first_name,
o.customer_id
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id;

------------------------RIGHT JOIN------------------------------------------------
--TASK 4--Get all the customers along with their orders,including orders without matching customers
SELECT
c.id,
c.first_name,
o.customer_id
FROM orders AS o
RIGHT JOIN customers AS c
ON c.id = o.customer_id;

------------------------FULL JOIN------------------------------------------------
--TASK 5--Get all the customers even if there's no match
SELECT
c.id,
c.first_name,
o.customer_id
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id;

------------------------LEFT-ANTI JOIN------------------------------------------------
--TASK 6--Get the customers who haven't place any order
SELECT*
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

------------------------RIGHT-ANTI JOIN------------------------------------------------
--TASK 7--Get all the orders without matching customers
SELECT*
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL;

------------------------ANTI-FULL JOIN------------------------------------------------
--TASK 5--Get all the customers without orders and orders without customers
SELECT*
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL 
	OR o.customer_id IS NULL;


----------------------------CHALLENGE QUESTION------------------------------------------
--Get all the customers with their orders but only for customers who have placed an order (without using INNER JOIN) 
SELECT*
FROM customers
SELECT*
FROM orders
SELECT
c.id,
c.first_name,
o.order_id,
o.customer_id
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NOT NULL 
	AND o.customer_id IS NOT NULL;


