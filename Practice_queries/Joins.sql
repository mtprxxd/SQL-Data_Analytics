USE SalesDB

SELECT*
FROM Sales.Orders
SELECT*
FROM Sales.Customers
SELECT*
FROM Sales.Products
SELECT*
FROM Sales.Employees

--PROBLEM 1--Generate every possible combination of Products and Employees. 
--Display ProductID, Product, EmployeeID, Employee FirstName, and Department.
SELECT
o.ProductID,
p.Product,
e.EmployeeID,
e.FirstName,
e.Department
FROM Sales.Orders AS o
CROSS JOIN Sales.Employees AS e
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID

--PROBLEM 2--Find all customers who have never placed an order. Display CustomerID, FirstName, LastName, Country, and Score.
SELECT
c.CustomerID,
c.FirstName,
c.LastName,
c.Country,
c.Score
FROM Sales.Orders AS o
FULL JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
WHERE o.CustomerID IS NULL
	OR c.CustomerID IS NULL

--PROBLEM 3--Display OrderID, OrderDate, Customer Full Name, Product Name, Category, Employee Full Name, Quantity, and Sales for all orders.
SELECT*
FROM Sales.Orders


