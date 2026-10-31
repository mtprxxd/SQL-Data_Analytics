USE MyDatabase
--------------SELECT------------------------FROM-----------------------------------------
--So here we are fetching the table by using Select and from
SELECT *
FROM orders

SELECT *
FROM customers

--TASK 1---Retrieve only the columns representing the name, country and score.
SELECT 
	first_name,
	country,
	score
FROM customers

----SELECT-------------FROM-------------WHERE-----------------------------------------------
--WHERE is used to filter the data based ont he conditions.
--TASK 2--Retrieve all the data that must be >=500.
SELECT *
FROM customers
WHERE score >= 500

--TASK 3--Retrieve the customers from germany
SELECT*
FROM customers
WHERE country = 'Germany'