
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

--Problem 5--Retrieve the top 5 highest-paid employees.
SELECT TOP 5*
FROM employees
ORDER BY salary DESC

--Problem 6--Display all unique department names from the Employees table.
SELECT DISTINCT 
Department
FROM employees

--Problem 7--Retrieve employees who belong to Delhi, and sort their salaries in descending order.
SELECT* 
FROM employees
WHERE City = 'Delhi'
ORDER By Salary DESC

--Problem 8--Display the top 3 employees from the IT department based on their salary.
SELECT TOP 3*
FROM employees
WHERE Department = 'IT'
ORDER By Salary DESC

--Problem 9--Display the employees whose salary is between ₹45,000 and ₹70,000, sorted by salary in ascending order.
SELECT *
FROM employees
WHERE salary >=45000 AND salary <= 70000
ORDER BY salary ASC

--Problem 10--Display the first 5 employees, showing their names and a static value 'India' as an additional column named Country.
SELECT TOP 5
EmployeeID,
Name,
Department,
Salary,
City,
'India' AS Country,
Age
FROM employees

--Problem 11--Find the total number of employees in each department.
SELECT*
