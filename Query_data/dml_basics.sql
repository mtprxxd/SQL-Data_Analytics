--DATA MANIPULATION LANGUAGE---------------------------------------------------
USE MyDatabase
----INSERT-----to insert the data in rows in table---------------------
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


--Inserting data from one table to another table name persons using select
--CREATE TABLE persons(
--p_id INT NOT NULL,
--p_name VARCHAR(20) NOT NULL,
--p_birthdate DATE,
--p_phone VARCHAR(15) NOT NULL,
--CONSTRAINT p_prmkey PRIMARY KEY(p_id)
--)
--INSERT INTO persons (p_id,p_name,p_birthdate,p_phone)
SELECT
id, 
first_name,
'Unknown',
NULL
FROM customers


--SELECT*
--FROM persons






