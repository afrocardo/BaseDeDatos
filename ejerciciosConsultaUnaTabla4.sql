--Fecha 20 Abril 2018

--Autor: Ricardo Meza Díaz
--Tema 12 DML(prácticas)Pago 56-
--Ejercicios

--1.Determinar los clientes cuyos importes facturados en el año 1997 superan la media de los iportres facturados de todos los restamtes,con el siguiente formato:
--*El group by no se puede olvidar En este caso usaremos el group by por sum y por avg.
--Si la condicion que hace referencia al grupo usamos la consulta having.
--Nombre cliente      Importe facturando	   Importe Medio
  --------------	  ------------------       -------------- 
use Northwind 
select CompanyName 'Nombre Cliente' sum((quantity*unitPrice)*(1-Discount))'Importe Total'avg((quantity * unitPrice)*(1-discount))'Importe Medio'
from customers inner join Orders on customers.customersId=orders.customersId [Orders Details]on[Orders Details].OrdersId=orders.ordersId where  year(orders.order Date)=1997
group by companyName --El ultimo select es una subconsulta.
having sum(quantity*unitPrice)*(1-discount))>(select avg((quantity*unitPrice)*(1-discount)) from [OrderDetails])
(--quantity+unitprice me da el descuento.
--2.


--3.


--4.
