create table Clientes
--Numero decimal con 6 digitos y despues de la coma tiene dos. decimal(p,s).
decimal(6,2)  			
select object_id('Employees')

--Primera columna de la tabla empleado.
select col_name(object_id('Emoloyees'),1);
--Muestra todas las tablas del sistema.
select*from sys.tables

--21 Febrero 2020
--Base de datos Northwind

--Muestra los 5 primeros carcateres de las palabras de la columna title.
select substring(title,1,5) from employees
--select title,substring(title,1,5) from employees
--Muestra la posicion en donde se encuentra una cadena.
select title,substring(title,1,5),charindex('sales',title)from employees
--Muestra si la cadena de la columna title termina en sales. Se puede usar c%,%x o %sales%.
select title,substring(title,1,5),partindex('%sales',title)from employees
--STR entra en el examen.
--Muestra cuanta cantidad hay de algo y lo muestra con un mensaje de cantidad.
select 'Cantidad='str(quantity,2)from [order details]
--Muestra cuantos caracteres hay en cada celda de la columna title.
select len(title)from employees
--Poner en mayuscula todas la celdas de la columna title.
select upper(title)from employees
--Muestra un remplazo de la palabra sales por ventas.
select replace(title,'sales','ventas')from employees
--Da la vuelta a la cadena..
select title, reverse(title)from employees

--CONVERT entra en el examen.
--Convierte la fecha de hoy en dd/mm/año.Formato británico.
select convert(getdate(),103)
--
select celling(123,45)
--
select floor(123.45)
--Muestra un numero aleatorio entre 1 y 10000 y lo convierte en entero.
select convert(int 10000*rand())
--Redondea hacia arriba
select convert(int 10000*rand(),2,3)
--
select orderdate,dateadd(day,5,orderdate)from orders
--
select dateiff(yyyy, orderdate,getdate())from orders
--
select datename(dw,getdate())

--Usar base de datos por defecto
use Northwind
--Muestra la tabla orders de la base de datos Northwind.
select * from orders

use pubs
--Muestra la tabla authors de la base de datos pubs.
select * from authors
