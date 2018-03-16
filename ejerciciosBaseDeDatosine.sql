--Nota: la palabra having se utiliza para la condicion de busqueda.
--Selecccionamos base de datos ine
use ine 
--Tabla Municipio
--Sentencia insert para insertar datos en la tabla.
--Añade tres  sentencias.
insert into Municipio values(1,'Merida','Badajoz',NULL)
insert into Municipio values(2,'Badajoz',NULL,NULL)
insert into Municipio values(3,'Caceres',NULL,NULL)
select * from Municipio 
--Tabla Persona 
--Sentencia update para modificar datos en la tabla.
--formato: update tabla set columna=expresion from. asi modifica toda la tabla
--Para que modifique solo una fila especifica.se usa el where.
update municipio set provincia ='Badajoz' where id_municipio=2	--Modifica la fila 2.
--Modifica el nombre de la provincia de la tabla municipio que tenga vivienda en la calle Anas
--Clave primaria de una tabla con la clave ajena de la otra tabla.
update municipio set provincia='Caceres' from municipio,vivienda where direccion='Anas' and municipio.id_municipio=vivienda.id_patata

--Sentencia delete: Borra datos de la tabla.
--Si no ponemos el from,borra todas las filas de la tabla.Si ponemos el from,borra solo la que queramos de la tabla.
--Borra todas las viviendas cuyo municipio tenga denominacion,Merida.
delete propietario 
delete vivienda from municipio,vivienda where denominacion='MERIDA' and municipio.id_municipio=vivienda.id_patata --Solucionar problema.
select *from vivienda 
select*from propietario

--Para nombrar una columna,se utiliza select provincia as 'Nombre Provincia'
--Muestra el nombre de lo municiios que estan en las 2 primeras filas  de la tabla municipio.
select top 2 denominacion from municipio 
--Muestra el  2% primero de todos los atibutos de la tabla.
select top 2 percent * from municipio 
--#	 tablaAños			temporal local.cuando se desconecta el usuario que la crea se borra.
--## tablaAños			temporal global.La tabla la creo yo y se borra cuando 
--tabla años			sin almohadillas,es una tabla permamente.

--Like es como el igual.se utiliza con cadenas o con fechas.Pero en esas cadenas podemos poner comodines.
--Caracteres de comodin como el %, el subrayado,[],o [*].