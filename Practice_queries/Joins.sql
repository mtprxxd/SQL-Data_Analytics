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
p.ProductID,
p.Product,
e.EmployeeID,
e.FirstName,
e.Department
FROM Sales.Products AS p
CROSS JOIN Sales.Employees AS e


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
	AND c.CustomerID IS NULL

--PROBLEM 3--Display OrderID, OrderDate, Customer Full Name, Product Name, Category, Employee Full Name, Quantity, and Sales for all orders.
SELECT
o.OrderID,
o.OrderDate,
c.FirstName AS CustomerFirstName,
c.LastName as CustomerFullName,
p.Product AS ProductName,
p.Category,
e.FirstName AS EmployeeFirstName,
e.LastName AS EmployeeFullName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID

--PROBLEM 4--Display each employee's name along with their manager's name, ManagerID, and department.
SELECT
e.FirstName AS EmployeeName,
m.FirstName AS ManagerName,
e.ManagerID,
e.Department
FROM Sales.Employees AS e
LEFT JOIN Sales.Employees AS m
ON m.EmployeeID = e.ManagerID


--PROBLEM 5--Display all customers and their orders, including customers who have never placed an order 
--and orders that do not have a matching customer record.
SELECT
c.customerID,
c.FirstName,
c.LastName,
p.Product AS orderName
FROM Sales.Customers AS c
FULL JOIN Sales.Orders AS o
ON c.CustomerID = o.CustomerID
LEFT JOIN Sales.Products AS p
ON p.ProductID = o.ProductID

--PROBLEM 6--Find all orders where the customer's Country is Germany and the employee handling the order belongs to the Sales department. 
           --Display OrderID, Customer Full Name, Employee Full Name, Product, and Sales.
SELECT
o.OrderID,
c.FirstName,
c.LastName,
e.FirstName,
e.LastName,
p.Product,
o.Sales
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID
WHERE c.Country = 'Germany'
	AND e.Department = 'Sales'

--PROBLEM 7--Display all employees along with their corresponding orders. Include employees who have not handled any orders. 
           --Show EmployeeID, FirstName, Department, OrderID, and Sales.
SELECT
e.EmployeeID,
e.FirstName,
e.Department,
o.OrderID,
o.Sales
FROM Sales.Employees AS e
LEFT JOIN Sales.Orders AS o
ON o.SalesPersonID = e.EmployeeID

--PROBLEM 8--Find records that do not have matching IDs between Customers and Orders. 
           --Display unmatched customer records and unmatched order records.
SELECT*
FROM Sales.Customers AS c
FULL JOIN Sales.Orders AS o
ON c.CustomerID = o.CustomerID
WHERE c.CustomerID IS NULL
    OR o.CustomerID IS NULL

--PROBLEM 9--Display all orders along with the customer's FirstName, LastName, OrderID, OrderDate, Product name, and Sales amount. 
           --Include only records that have matching entries in all relevant tables.
SELECT
c.FirstName,
c.LastName,
o.OrderID,
o.OrderDate,
p.Product AS ProductName,
o.Sales AS SaleAmount
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID

--PROBLEM 10--Display all orders along with customer details, product details, and salesperson details. 
            --Also include customers, products, and employees that are not associated with any order.
SELECT*
FROM Sales.Orders AS o
FULL JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
FULL JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
FULL JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID






