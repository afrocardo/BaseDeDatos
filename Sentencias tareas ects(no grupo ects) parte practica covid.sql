--Ejercicios consultas ECTS Practica BD


------------------------ PRACTICAS 3 NORTHWIND --------------------------
--1.- Obtener el número de facturas que han generado en el año 1997 los
--empleados, con el siguiente formato:
-- Nombre Empleado N. Facturas
 select firstname+' '+lastname as "Nombre Empleado",
 count(*) as "N. Facturas"
 from employees inner join orders on
 (employees.employeeid=orders.employeeid and
 year(orderdate)=1997)
 group by firstname+' '+lastname
 order by 2 desc