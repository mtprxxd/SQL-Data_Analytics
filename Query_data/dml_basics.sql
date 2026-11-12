--DATA MANIPULATION LANGUAGE---------------------------------------------------
USE MyDatabase


------------------INSERT------------------to insert the data in rows in table---------------------

--SELECT*
--FROM customers
--INSERT INTO customers (id,first_name,country,score)
--VALUES (6,'Khushi','USA',NULL)

--------Also you can add multiple rows 
--INSERT INTO customers (id,first_name,country,score)
--VALUES (7,'Simran','Australia',400),
--		(8,'Divit','Turkey', 390)

---Running local queries for understanding
--INSERT INTO customers (id,first_name,country,score)
--VALUES (9,'Norway')

--INSERT INTO customers (id,first_name,country,score)
--VALUES (10) ---result will throw error
--SELECT*
--FROM customers

------------------------------------------------------------------------------------------------

--Inserting data from one table to another table name persons using select
--CREATE TABLE persons(
--p_id INT NOT NULL,
--p_name VARCHAR(20) NOT NULL,
--p_birthdate DATE,
--p_phone VARCHAR(15) NOT NULL,
--CONSTRAINT p_prmkey PRIMARY KEY(p_id)
--)
--INSERT INTO persons (p_id,p_name,p_birthdate,p_phone)
--SELECT
--id, 
--first_name,
--NULL,
--'Unknown'
--FROM customers

--SELECT*
--FROM persons

--------------------------------UPDATE---------to update the existing data-------------------------------

--TASK 1 --Change the score of customer 6 to 0 ----- 
UPDATE customers
SET score = 0
WHERE id = 6
SELECT*
FROM customers

--TASK 2--change the score of the customers id 7 to 100 and also change the country Australia to INDIA
UPDATE customers
SET country = 'India',
	score = 100
WHERE id = 7

--TASK 3--update all the customers with the score NULL to 0 and country NULL to Norway.
UPDATE customers
SET score = 0,
	country = 'Norway'
WHERE score IS NULL AND country IS NULL 


------------------DELETE---------------to delete the row from the existing table

--TASK 4--Delete all customers with the country = Germany.
DELETE customers
WHERE country = 'Germany'

----To delete all the data from the table use TRUNCATE TABLE table_name--------













