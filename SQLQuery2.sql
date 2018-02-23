--Nota: cunado buscamos informaci�n de un cliente,hay que tener cuidado de que el atributo a buscar no tenga valor NULL.
--A la hora de comparar,tener cuidado de que no sean valores nulos.
--Da una subcadena los 5 primeras letras de la tabla employyes 
select substring(title,1,5)from employees
--Muestra por pantalla la frase "cantidad" y la cantidad de elementos que hay en la tabla de order details.
--+ es para unir un string con un valor 
select 'Cantidad'+str(quantity)from [Order Details] 
--Cambiar la palabra sales por ventas en title.
select replace(title,'sales','ventas')from employees 
--Muestra lo diferente o lo igueles que son dos cadenas.
select difference('ventas','sales')from employees 
--Muestra 
select soundex('ventas'),soundex('sales');
--Obtiene fecha del sistema 
select getdate()
--Cambia la el formato de la fecha del sistema
--Cambia fecha a cadena dd/mm/aaaa.
select convert(varchar(10),getdate(),103) 
--Inicializa la semilla.
--select rand(10000)*10000
--Valor aleatorio entre 1 y 10000y luego lo pasamos a entero porque el resultado de por si siempre es float.
select cast(rand()*10000 as int)
--select sign()from employees 
--Sumar 10 dias mas a las fechas de orders y orderdate 
select dateAdd(day,10,orderdate) from Orders
--Diferencia en a�os entre la fecha de hoy y la fecha de factura.Cuanto a�os han pasado desde que se han facturado
--esas facturas
select datediff(yyyy,orderdate,getdate())from Orders 
select DATENAME(M , getDate())
--Dia de la semana de hoy 
select datepart(Dw,getdate())
--Dia del mes
select DATEPART(D,GETDATE())
--Muestra la fecha actual en formato cadena.
select 'fecha: '+str(day(getdate()),2)+'/'+str(month(getdate()),2)+'/'+str(year(getdate()),4)

