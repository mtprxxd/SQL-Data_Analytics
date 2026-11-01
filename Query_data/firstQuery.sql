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

----SELECT-------------FROM-------------WHERE-----use before GROUP BY------------------------------------------
--WHERE is used to filter the data based ont he conditions.
--TASK 2--Retrieve all the data that must be >=500.
SELECT *
FROM customers
WHERE score >= 500

--TASK 3--Retrieve the customers from germany
SELECT*
FROM customers
WHERE country = 'Germany'

----SELECT-------FROM----------WHERE-------ORDER BY-----------------------------------------
SELECT*
FROM customers
--ORDER BY score ASC
ORDER BY score DESC

--------------------NESTED SORTING-----------------------------------------------
SELECT*
FROM customers
ORDER BY 
	country ASC, score DESC
---------------------------------------GROUP BY----To aggregate the data Or group the multiple rows in one---------------------
--TASK 4-------Find the total score for each country-----------------------------------
SELECT
country,
SUM(score) AS total_score
FROM customers
GROUP BY country
ORDER BY total_score ASC 
-----what if i want to add the name column-----------------------------------
SELECT
first_name,
SUM(score) AS total_score
FROM customers
GROUP BY first_name

--TASK 5--Find the total score and total number of customers for each country-------
SELECT 
country,
COUNT(first_name) AS total_customer,
SUM(score) AS total_score
FROM customers
GROUP BY country

----------------HAVING------To filter Aggregated data, use after GROUP BY-------------------------------------------------------------
SELECT
country,
SUM(score) AS Agg_data
FROM customers
GROUP BY country
HAVING SUM(score)>800 --SUM(score)>800 is a condition-------

--TASK 6---Find the average score for each country considering only customers with a score != 0 
--and return only those countries with an average score > 430
SELECT
country,
AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) >430

--------------------DISTINCT----------to remove the duplicates--------------------------
--TASK 7--Return unique list of all countries.
SELECT DISTINCT
country
FROM customers

------------TOP-----to restrict the number of rows returned----------------
--TASK 8---Retrieve only 3 customers-----------------
SELECT TOP 3 *
FROM customers

--TASK 9--Retrieve the top 3 customers with Highest score
SELECT TOP 3*
FROM customers
ORDER BY score DESC

--TASK 10--Retrieve the 2 most recent orders
SELECT TOP 2*
FROM orders
ORDER BY order_date DESC



































