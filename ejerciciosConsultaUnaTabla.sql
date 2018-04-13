USE Northwind

--SELECT SupplierID, COUNT(*) FROM Products GROUP BY SupplierID ORDER BY 2  DESC

--SELECT CategoryID, MAX(UnitPrice) FROM Products GROUP BY CategoryID ORDER BY 2 DESC, 1 ASC

--SELECT TOP(1) SupplierID,COUNT(DISTINCT(ProductID)) FROM Products GROUP BY SupplierID ORDER BY 2 DESC

--SELECT SupplierID, COUNT(DISTINCT(ProductID)) FROM Products GROUP BY SupplierID HAVING COUNT(DISTINCT(ProductID))>3 ORDER BY 2 DESC
 
--SELECT UnitPrice, COUNT() FROM Products GROUP BY UnitPrice HAVING COUNT()>1 ORDER BY 2 DESC

--SELECT CategoryID, SUM(UnitPrice*UnitsInStock) FROM Products GROUP BY CategoryID ORDER BY 2 DESC

--SELECT CategoryID, SUM(UnitPrice*UnitsInStock) FROM Products GROUP BY CategoryID HAVING (SUM(UnitPrice*UnitsInStock)>AVG(UnitPrice*UnitsInStock)) ORDER BY 1 ASC

--SELECT Employees.EmployeeID, COUNT(*) FROM Employees INNER JOIN Orders ON (Employees.EmployeeID=Orders.EmployeeID AND YEAR(OrderDate)=1997) GROUP BY Employees.EmployeeID
