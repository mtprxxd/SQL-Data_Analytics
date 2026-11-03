
USE MyDatabase


--Problem 1--Display all columns and records from the Employees table.
SELECT*
FROM employees

--Problem 2--Display only the Name, Department, and Salary columns.
SELECT
Name,
Department,
Salary
FROM employees

--Problem 3--Retrieve all employees whose salary is greater than ₹50,000.
SELECT *
FROM employees
WHERE Salary > 50000

--Problem 4--Display employees who belong to the IT department and are older than 25.
SELECT *
FROM employees
WHERE Department = 'IT' AND Age > 25 