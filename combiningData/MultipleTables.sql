USE SalesDB

------------------------------MULTIPLE TABLE JOINING--------------------------------------

--TASK 7--Using SalesDB, retrieve a list of all orders, along with the related customers, product and employee details.
SELECT*
FROM Sales.Orders
SELECT*
FROM Sales.Customers
SELECT*
FROM Sales.Products
SELECT*
FROM Sales.Employees

SELECT
o.OrderID,
c.FirstName AS CustomerName,
o.Sales,
p.Product,
p.Price,
e.FirstName AS EmployeeName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c 
ON o.OrderID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID



