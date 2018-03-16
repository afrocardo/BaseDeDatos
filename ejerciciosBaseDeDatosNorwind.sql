--Ejercicios tema 12 prácticas pagina 24,Base de datos Northwind.

--Autor: Ricardo Meza Díaz
--1.Visualizar todas las filas de la tabla Products.
select * from Products 
--2.Visualizar todos los productos con menos de 25 unidades en almacén.
select*from Products where UnitsInStock<25 order by UnitsInStock desc 
--3.Visualizar todos los productos con categorias entre 3 y 8.
select*from Products where CategoryID between 3 and 8
--4.Visualizar todos los productos cuyo nombre empiecen con la letra k.
select *from Products where productName like'k%' 
--5.Visualizar todos los productos cuyo nombre posea en la quinta posición las letras c,d,e,f,o,g.
select *from products where ProductName like'_____[cdefg]%'

