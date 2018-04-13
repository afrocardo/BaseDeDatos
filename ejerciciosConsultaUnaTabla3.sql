--Tema 12 pag 40 
--Fecha: 13 Abril 2018
--Nota:Combinaciones solo se cogen las que cumplen la fila de combinación.

--1.Obtener la clasificacion por volumnen de facturacion en el año 1997 de todos los empleados con el siguiente formato.
-- Nombre Completo	  Importe facturación
--Nota: el join es un producto cartesiano.
--a join b =axb+s(a)=1000x5+5(1000)=6000
--Nota:  Cuando es una tabla identity,
--Left join: coge todas la filas de la izquierda indipendeitemente de las uninionennes que tengas con otras filas.
SELECT FirstName +' ' + LastName as 'NombreCompleto', 
SUM(unitprice*quantity*(1-discount)) AS 'Importe Facturacion'
FROM Employees inner join Orders on Employees.EmployeeID=Orders.EmployeeID and YEAR(OrderDate)=1997 
left join "Order Details" on ("Order Details".orderid=orders.orderid)
group by firstname+' '+lastname 
order by 2 desc
--Insertamos un empleado en la tabla dado su apellido y nombre.
insert into Employees(LastName,FirstName) values ('PEPE','GOTERA')
select * from Employees
--Borramos el pepe gotera repetido.La ultima fila de la tabla fila 11.

--delete 11 from Employees
--2.Obtener todos los productos que no han registrado ventas en 1997,lsegun el formato siguiente:
--codigo de producto    denominacion
--PREGUNTA EXAMEN : LA CONDICION NUNCA VA EN EL WHERE SI NO EN EL HAVING,
--PRIMERO VA EL HAVING Y DESPUES EL WHERE.
insert into Products(ProductName,Discontinued) values ('PRUEBA',0)
select products.ProductID as'Codigos de productos', productname as'Denominacion'
from Products left join "order details" on products.ProductID="Order Details".ProductID 
left join orders on orders.OrderID="order details".OrderID and year (OrderDate)=1997
group by Products.ProductID,ProductName
having sum(("order details".UnitPrice*Quantity)*(1-Discount)) is null
order by 2 asc
--3.
--Prbaremos antes a introducir un cliente nuevo
--Nota: cuando queremos sacar informacion de lo coincida por la derecha y por la izquierda usamos,full join
--el de cross esta hecho pero hay que terminar el de left join ,pedirselo a alguien
insert into Customers (CustomerID,CompanyName) values (0,'MI CLENTE')
select count(*) from Customers
select CompanyName as'Nombre Cilente',year (orderdate), 
         Cuatrimestre1= case (datepart(q,orderdate))
		 WHEN 1 then sum(("order details".unitPrice*Quantity)*(1-Discount))
		 else 0
		 end,
		 Cuatrimestre2= case (datepart(q,orderdate))
		 WHEN 1 then sum(("order details".unitPrice*Quantity)*(1-Discount))
		 else 0
		 end,
		 Cuatrimestre3= case (datepart(q,orderdate))
		 WHEN 1 then sum(("order details".unitPrice*Quantity)*(1-Discount))
		 else 0
		 end,
		 Cuatrimestre4= case (datepart(q,orderdate))
		 WHEN 1 then sum(("order details".unitPrice*Quantity)*(1-Discount))
		 else 0
		 end
from customers cross join  orders
				cross join "order details" 
where  orders.CustomerID=Customers.CustomerID and 
"Order Details".OrderID=orders.OrderID
group by CompanyName,year (OrderDate),DATEPART(q,orderdate)
order by 1,2

--4.(inventado) Usaremos el cross join

--Muestra la cantidad de filas que tiene la tabla employees y orders.
select count(*)from employees 
select count(*)from orders 