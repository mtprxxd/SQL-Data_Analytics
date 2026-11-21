USE SalesDB

----------------------------UNION------------------------------------------------

--TASK 1--Combine the data from customers and employees into one table
SELECT
CustomerID,
FirstName,
LastName
FROM Sales.Customers
UNION
SELECT
EmployeeID,
FirstName,
LastName
FROM Sales.Employees

------------------------------UNION ALL-------------------------------------------------
--TASK 2--Combine the data from customers and employees into one table including duplicates
SELECT
CustomerID,
FirstName,
LastName
FROM Sales.Customers
UNION ALL
SELECT
EmployeeID,
FirstName,
LastName
FROM Sales.Employees

------------------------------------EXCEPT-----------------------------------------------------
--TASK 3--ind the employees who are not customers at the same time
SELECT
EmployeeID,
FirstName,
LastName
FROM Sales.Employees
EXCEPT
SELECT
CustomerID,
FirstName,
LastName
FROM Sales.Customers

-----------------------------------INTERSECT----------------------------------------------------
--TASK 4--Find the employees who are also customers
SELECT
EmployeeID,
FirstName,
LastName
FROM Sales.Employees
INTERSECT
SELECT
CustomerID,
FirstName,
LastName
FROM Sales.Customers


-------------------------------OPTIMISED WAYS--------------------------------------------------
-----Orders are stored in separate tables (Orders and OrderArchieve).Combine all orders into a report without Duplicates.
SELECT
'Orders' AS SourceTable, 
[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.Orders
UNION 
SELECT
[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.OrdersArchive

