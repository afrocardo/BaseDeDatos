select CustomerID as Nombre_Empleado, count(OrderID) as Numero_Facturas
from Orders
where year(OrderDate)=1997
group by CustomerID
order by 2 desc 
