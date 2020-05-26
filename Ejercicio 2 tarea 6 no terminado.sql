select OrderID as Numero_Factura, UnitPrice as Importe
from OrdersDetails inner
where year(OrderDate)=1997
group by OrderID 
order by 2 desc 