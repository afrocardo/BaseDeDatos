--6 Abril 2018
--Tema 12 pagina 39
use Northwind
--1.Obtener el número de facturas que han generado en el año 1997 los empleados con el siguiente formato.
select FirstName+' '+LastName as'Nombre completo',count(*) as 'n*facturas' from Employees inner join Orders ON (Employees.EmployeeID=Orders.EmployeeID)
where year(OrderDate)=1997 group by FirstName+' '+LastName order by 2 desc 
--2.Obtener los importes de facturas que se han generado en el año 1997 con el siguiente formato.
SELECT Orders.OrderID AS 'Numerofactura', SUM(quantity*unitprice*(1-discount)) AS Importe
FROM Orders INNER JOIN [Order Details] ON (Orders.OrderID=[Order Details].OrderID) WHERE YEAR(OrderDate)=1997 GROUP BY Orders.OrderID ORDER BY 2 DESC
 
--3.obtener la clasificacion por volumen de facturacion de los empleados para 1997 con el siguiente formato.
select Orders.OrderID as'Numero facturas',sum(quantity*unitprice*(1-discount))as Importe from Orders inner join [Orders Details] on(Orders.OrderID=[Order Details].OrderID)

SELECT FirstName +' ' + LastName as 'NombreCompleto', SUM(quantity*unitprice*(1-discount)) AS 'Importe'
FROM Employees INNER JOIN orders ON(employees.employeeid=Orders.employeeid and YEAR(OrderDate)=1997) 
INNER JOIN [Order Details] ON (Orders.OrderID=[Order Details].OrderID) GROUP BY firs


--select count(*) from employees 
--select count(*) from orders 