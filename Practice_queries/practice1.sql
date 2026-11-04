
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
SELECT
Department,
COUNT(Name) AS total_emp
FROM employees
GROUP BY Department

--Pronlem 12--Calculate the average salary for each department.
SELECT
Department,
SUM(salary) AS Total,
COUNT(Name) AS total_emp,
AVG(salary) AS avg_sal
FROM employees
GROUP BY Department

--Problem 13--Display only those departments whose average salary is greater than ₹50,000.
SELECT
Department,
AVG(salary) AS avg_salary
FROM employees
GROUP BY Department
HAVING AVG(salary) > 50000

--Problem 14--Find the total salary expenditure for each city. Display only cities where the total salary expenditure exceeds ₹1,00,000.
SELECT
City,
SUM(salary) AS Expenditure
FROM employees
GROUP BY City
HAVING SUM(salary) > 100000

--Problem 15--Display the department-wise employee count, average salary, and maximum salary. 
--Show only departments having more than 2 employees, and sort the results by average salary in descending order.
SELECT 
Department,
COUNT(name) AS total_emp,
AVG(salary) AS avg_salary,
MAX(salary) AS max_salary
FROM employees
GROUP BY Department
HAVING COUNT(name) > 2
ORDER BY AVG(salary) DESC

