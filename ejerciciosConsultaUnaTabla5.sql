USE Northwind

SELECT employees.employeeid AS 'Codigo Empleado',
firstname+' '+lastname AS 'Nombre Completo',
SUM((quantity*unitprice)*(1-discount)) AS Importe
INTO #tmp
FROM employees INNER JOIN orders ON (employees.employeeid=orders.employeeid AND YEAR(orderdate)=1997)

			   INNER JOIN "Order details" ON (orders.orderid="Order details".orderid)
GROUP BY employees.employeeid, firstname+' '+lastname
--ORDER BY 3 DESC

SELECT * FROM #tmp
WHERE Importe in (SELECT MAX(Importe) from #tmp)
UNION 
SELECT * FROM #tmp
WHERE Importe IN (SELECT MIN(Importe) FROM #tmp)

DELETE #tmp

-------------------------------------------------------------------------------------------------------------------------


SELECT companyname,
SUM((quantity*unitprice)*(1-discount)) AS 'Importe Facturado'
INTO #tmp1
FROM Customers INNER JOIN ORDERS ON (customers.CustomerID=orders.CustomerID and YEAR(OrderDate)=1997)
			   INNER JOIN [Order Details] ON ([Order Details].OrderID=Orders.OrderID)
GROUP BY CompanyName


SELECT Customers.CompanyName AS 'Nombre Cliente',
SUM((quantity*unitprice)*(1-discount)) AS 'Importe Facturado',
AVG((quantity*unitprice)*(1-discount)) AS 'Importe Medio'
FROM Customers INNER JOIN ORDERS ON (customers.CustomerID=orders.CustomerID and YEAR(OrderDate)=1997)
			   INNER JOIN [Order Details] ON ([Order Details].OrderID=Orders.OrderID)
GROUP BY CompanyName
HAVING SUM((quantity*unitprice)*(1-discount))> (SELECT AVG([Importe Facturado]) FROM #tmp1)
ORDER BY 2 DESC