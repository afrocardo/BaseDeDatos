CREATE DATABASE Viveros1

ON
	(NAME='Vivero01',FILENAME='C:\Ejemplos BD\Viveros_datos.MDF',SIZE=15,FILEGROWTH=5%) 
	LOG ON --ACCEDER Y CREAR REGISTROS
	(NAME='ViveroR01',FILENAME='C:\Ejemplos BD\Viveros_Registros.MDF',SIZE=4,FILEGROWTH=5MB)
--Tabla viveros
CREATE TABLE Viveros
(viv_id_vivero int not null,
viv_nombre varchar(100)not null,
viv_direccion varchar(50),
viv_cod_postal varchar(10),
viv_id_ciudad int,
primary key(viv_id_vivero)  )

--Tabla Ciudades
CREATE TABLE Ciudades
(ciu_id_ciudad int not null,
ciu_nombre_ciudad varchar(100),
primary key (ciu_id_ciudad) )

--Tabla Vivtel
CREATE TABLE Vivtel
(vit_id_vivero int not null,
vit_telefono varchar(15),
primary key (vit_id_vivero,vit_telefono),
foreign key (vit_id_vivero)references Viveros(viv_id_vivero) )

--Tabla Paises
CREATE TABLE Paises
(pai_id_pais int not null,
pai_nombre_pais varchar(100),
primary key (pai_id_pais) )

--Tabla idiomas
CREATE TABLE Idiomas
(idi_id_idioma int not null,
idi_nombre_idioma varchar(100),
primary key (idi_id_idioma) )

--Tabla empleados
CREATE TABLE Empleados
(emp_dni int not null,
emp_nombre varchar(100),
emp_id_idioma int not null,
emp_id_pais int)

primary key (emp_dni), 
foreign key (emp_id_pais)references Paises(pais_id_pais),
(emp_id_idioma)references Idiomas(idi_id_idioma))

--Tabla emptel: Almacena en cada fila los datos de cada uno de los teléfonos de cada empleado.
CREATE TABLE Emptel
(emt_dni varchar(15),
emt_telefono varchar(15))
primary key(emt_dni,emt_telefono),
foreign key(emt_dni)references Empleados(emp_dni))

--Tabla colores: Almacena en cada fila los datos referidos a los distintos colores que pueden tener los accesorios de jardinería.
CREATE TABLE Colores
(col_id_color int not null,
col_nombre_color varchar(100))
primary key(col_id_color)

--Tabla responsables: Almacena en cada fila los datos referidos a los empleados que han sido responsables de viveros junto la fecha de comienzo y el tiempo que ha estado de responsable.
CREATE TABLE Responsables
(res_dni varchar(15),
res_id_vivero int not null,
res_fecha_inicio datetime not null,
res_tiempo int,
primary key(res_id_vivero,res_fecha_inicio),
foreign key((res_id_vivero)references Viveros(viv_id_vivero),
(res_dni)references Empleados(emp_dni))

--Tabla responsables:  Almacena en cada fila las zonas en las que están distribuidas los viveros. El atributo ZON_tipo tiene los valores REG para las zonas de regadío, CLI para la zona climatizada o CAJ para la zona de caja
CREATE TABLE Zonas
(zona_id_zona int not null,
zona_nombre varchar(100),
zona_tipo varchar(3),
primary key(zon_id_zona))

--Tabla responsables:  almacena en cada fila los datos correspondientes a los distintos productos que se venden en los viveros. El atributo PRO_tipo tiene los valores PLA para las plantas, JAR para los artículos de jardinería o DEC para los artículos de decoración.
CREATE TABLE Productos 
(pro_id_producto int not null,
pro_nombre varchar(50),
pro_precio_com decimal(8,3),
pro_precio_ven decimal(8,3),
pro_nomnbre_cientifico varchar(50),
pro_descripcion varchar(3),
pro_id_zona int not null,
pro_id_color int not null,
primary key(pro_id_producto))
foreign key((pro_id_zona)references Zonas(zon_id_zona),(pro_id_color)references Colores (col_id_color)))

--Tabla existencias:  almacena en cada fila los datos correspondientes al stock, es decir, la cantidad de producto que hay en cada uno de los viveros.
CREATE TABLE Existencias
(zona_id_zona int not null,
zona_nombre varchar(100),
zona_tipo varchar(3),
primary key(zon_id_zona))
--Tabla asignaciones:  almacena en cada fila los datos históricos de cada uno de los empleados que han estado trabajando en cada zona de cada vivero con el tiempo que ha estado en ellas y la función que ha realizado.

CREATE TABLE Asignaciones
(asi_id_vivero int not null,
asi_id_zona int not null,
asi_dni varchar(15),
asi_fecha smalldatetime,
asi_tiempo int,
asi_funcion varchar(20))
primary key(asi_id_vivero,asi_id_zona,asi_dni,asi_fecha)
foreign key((asi_id_vivero)references Viveros(viv_id_vivero),(asi_id_zona)references Zonas(zon_id_zona),(asi_dni)references Empleados(emp_dni))

--Tabla Clientes:  almacena en cada fila los datos de cada uno de los clientes que han realizado pedidos en cualquier vivero o ha pagado alguno de los pedidos realizados.

CREATE TABLE Clientes
(cli_id_cliente int not null,
cli_nombre varchar(100),
cli_dni varchar(15),
cli_direccion varchar(50),
cli_telefono varchar(15),
cli_fecha_alta smalldatetime)
primary key(cli_id_cliente))

--Tabla Pedidos_cab: Almacena en cada fila los datos generales de cada uno de los pedidos realizado por los clientes.
CREATE TABLE Peridos_cab
(pec_id_vivero int not null,
pec_id_cliente int,
pec_dni varchar(15),
pec_fecha_pedido smalldatetime,
pec_portes decimal(8,3),
primary key(pec_id_vivero,pec_id_cliente,pec_dni,pec_fecha_pedido),
foreign key (pec_id_vivero)references Viveros(viv_id_vivero),(pec_id_cliente)references Clientes(cli_id_cliente),(pec_dni)references Empleados(emp_dni))

--Tabla Pedidos_lin:  Almacena en cada fila los datos particulares de los productos de cada pedido realizado por los clientes.
CREATE TABLE Pedidos_lin
(pel_id_vivero int not null,
pel_id_cliente int not null,
pel_dni varchar(15),
pel_fecha_pedido smalldatetime,
pel_id_producto int not null,
pel_precio_pro decimal(8,3),
pel_cantidad decimal(8,3),
pel_descuento decimal(8,3),
primary key(pel_id_vivero,pel_id_cliente,pel_dni,pel_fecha_pedido,pel_id_producto),
foreign key())

--Tabla responsables:  Almacena en cada fila las zonas en las que están distribuidas los viveros. El atributo ZON_tipo tiene los valores REG para las zonas de regadío, CLI para la zona climatizada o CAJ para la zona de caja

CREATE TABLE Zonas
(zona_id_zona int not null,
zona_nombre varchar(100),
zona_tipo varchar(3),
primary key(zon_id_zona))
--Tabla responsables:  Almacena en cada fila las zonas en las que están distribuidas los viveros. El atributo ZON_tipo tiene los valores REG para las zonas de regadío, CLI para la zona climatizada o CAJ para la zona de caja

CREATE TABLE Zonas
(zona_id_zona int not null,
zona_nombre varchar(100),
zona_tipo varchar(3),
primary key(zon_id_zona))






