--Creacion base de datos practica final

CREATE DATABASE Bibliografia  
--I TABLA--Que almacena en cada fila los datos referidos a las distintas provincias en las que viven cada uno de los clientes.CREATE TABLE Provincias
(pro_codprovincia int not null,
pro_nombreprovincia varchar(75) not null,
primary key (pro_codprovincia)
)


--II TABLA
--Que almacena en cada fila los datos referidos a los distintos países en los que tienen su nacionalidad cada uno de los autores.
CREATE TABLE Paises
(pai_codpais int not null,
pai_nombrepais varchar(75) not null,
primary key (pai_codpais)
)


--III TABLA 
--Que almacena en cada fila los datos correspondientes a cada uno de los autores intelectuales de alguno de los recursos.
CREATE TABLE Autor
(aut_id_autor int not null,
aut_nombre varchar (100) not null,
aut_direccion varchar(100),
aut_localidad varchar(100),
aut_codpostal varchar(8),
aut_codprovincia int not null ,
aut_direccioncorreoe varchar(100),
aut_codpais int ,
primary key (aut_id_autor),
foreign key (aut_codprovincia) references Provincias (pro_codprovincia),
foreign key (aut_codpais) references Paises (pai_codpais),
)
--IV TABLA 
--Que almacena en cada fila los datos correspondientes a cada uno de los diferentes teléfonos que tiene cada autor.
CREATE TABLE Autortelf
(auf_id_autor int not null,
auf_telefono varchar (15) not null,
primary key (auf_id_autor, auf_telefono),
foreign key (auf_id_autor) references Autor (aut_id_autor),
)


--III TABLA
--Que almacena en cada fila cada uno de los distintos elementos que almacena la biblioteca en cuestión, es decir, los
--datos generales y comunes a los distintos objetos susceptibles de ser almacenado en la biblioteca.
CREATE TABLE Recurso
(rec_id_recurso int not null,
rec_titulo varchar (200),
rec_subtitulo varchar (200),
rec_isbn varchar(13),
rec_issn varchar (10),
rec_fecha_creacion datetime,
rec_descripcion varchar(500),
rec_resumen  varchar (500),
rec_codigo varchar(30),
rec_url varchar(150),
primary key (rec_id_recurso)
)


--IV TABLA
--Que almacena en cada fila los datos correspondientes a cada uno de los responsables intelectuales de cada recurso
--y su grado de responsabilidad
CREATE TABLE Responsable
(res_id_autor int not null,
res_id_recurso int not null,
res_grado varchar(100) not null,
primary key (res_id_autor,res_id_recurso),
foreign key (res_id_autor) references Autor (aut_id_autor),
foreign key (res_id_recurso) references Recurso (rec_id_recurso)
)


--V TABLA
--Que almacena en cada fila los datos correspondientes a cada uno de los recursos que son del tipo monografía, es
--decir, solo los datos particulares de este tipo de recurso.
CREATE TABLE Monografia
(mom_id_recurso int not null,
mom_importancia varchar (100),
mom_num_coleccion varchar(100),
mon_notas varchar(300),
primary key (mom_id_recurso),
foreign key (mom_id_recurso) references Recurso (rec_id_recurso)
)


--VI TABLA
--Que almacena en cada fila los datos correspondientes a cada uno de los recursos que son del tipo artículo, es decir,
--solo los datos particulares de este tipo de recurso.
CREATE TABLE Articulo
(art_id_recurso int not null,
art_localizacion varchar(100) ,
art_paginas varchar(100) ,
primary key (art_id_recurso),
foreign key (art_id_recurso) references Recurso (rec_id_recurso)
)

--VII TABLA
--Que almacena en cada fila los datos correspondientes a cada uno de los recursos que son del tipo patentes, es decir,
--solo los datos particulares de este tipo de recurso
CREATE TABLE Patente
(pat_id_recurso int not null,
pat_tipo varchar(200) null,
pat_notas varchar(200)  null,
primary key (pat_id_recurso),
foreign key (pat_id_recurso) references Recurso (rec_id_recurso),
)


--VIII TABLA
--Que almacena en cada fila los datos correspondientes a cada uno de los recursos que son del tipo texto en formato
--electrónico, es decir, solo los datos particulares de este tipo de recurso.
CREATE TABLE Texto 
(tex_id_recurso int not null,
tex_descripcion varchar(200) ,
tex_num_coleccion varchar(100),
tex_notas varchar(300) ,
tex_disponibilidad varchar(100) ,
tex_fecha_consulta int,
primary key (tex_id_recurso),
foreign key (tex_id_recurso) references Recurso (rec_id_recurso)

)

--IX TABLA
--Que almacena en cada fila la información referente a cada una de las personas que se encarga de publicar un recurso
--para que pueda tener acceso a él el público.
CREATE TABLE Editor
(edi_id_editor int not null,
edi_nombre varchar(100) not null,
edi_direccion varchar(100),
edi_localidad varchar(100),
edi_codpostal varchar(8) ,
edi_telefono varchar(15),
primary key (edi_id_editor)
)

--X TABLA
--Que almacena en cada fila los datos referidos a los distintos elementos físicos en los que pueden ser publicados los
--recursos.
CREATE TABLE Soporte
(sop_id_soporte int not null,
sop_denominacion char (75) not null,
primary key (sop_id_soporte),
)


--XI TABLA
--Que almacena en cada fila los datos referidos a los distintos idiomas en los que pueden ser publicados los recursos
CREATE TABLE Idioma
(idi_id_idioma int not null,
idi_nombre varchar (75) not null,
primary key (idi_id_idioma)
)

--XII TABLA
--Que almacena en cada fila los datos correspondientes a las implementaciones físicas de los recursos y por tanto, el
--elemento físico al que va a tener acceso el cliente.
CREATE TABLE Ejemplar
(eje_id_ejemplar int not null,
eje_id_recurso int not null,
eje_id_editor int not null,
eje_id_soporte  int not null,
eje_id_idioma int not null,
eje_fecha_publicacion datetime not null,
eje_num_edicion varchar(100) null,
eje_lugar varchar(150) null,
primary key (eje_id_ejemplar),
foreign key (eje_id_recurso) references Recurso  (rec_id_recurso),
foreign key (eje_id_editor) references Editor (edi_id_editor),
foreign key (eje_id_soporte) references Soporte (sop_id_soporte),
foreign key (eje_id_idioma) references Idioma (idi_id_idioma)
)


--XIII TABLA
--Que almacena en cada fila los datos correspondientes a las implementaciones físicas de los recursos y por tanto, el
--elemento físico al que va a tener acceso el cliente.
 --*
CREATE TABLE Cliente
(ci_id_cliente int not null,
ci_dni  varchar(15) not null,
ci_nombre varchar(100) not null, 
ci_direccion varchar(100) null, 
ci_localidad varchar(100) null, 
ci_codpostal varchar(8) null, 
ci_telefono varchar(15) null, 
ci_nombre_directorio varchar(150) null, 
primary key (ci_id_cliente)
)

--XIV TABLA
--Que almacena en cada fila la información referente a las consultas realizadas por los clientes en este tipo de servicio
--y por el cual, se obtienen datos de las referencias bibliográficas almacenas en la biblioteca con un formato especifico
--elegido por el mismo.
CREATE TABLE Bibliografia
(bib_id_bibliografia int not null,
bib_id_ejemplar int not null,
bib_id_cliente int not null,
bib_fecha  datetime not null,
bib_hora datetime not null,        --*
primary key (bib_id_bibliografia)
)
--XV TABLA
--Que almacena en cada fila los datos de las anotaciones u opiniones que han escrito los clientes en la realización de
--la consulta y lectura de los distintos ejemplares almacenados en la biblioteca
CREATE TABLE Consulta
(con_id_ejemplar int not null,
con_id_cliente int not null,
con_fecha datetime not null,
con_hora  time not null,
con_texto_anotacion varchar(500),
primary key (con_id_ejemplar,con_id_cliente,con_fecha),
foreign key (con_id_ejemplar) references Ejemplar  (eje_id_ejemplar),
foreign key (con_id_cliente) references Cliente (ci_id_cliente)

)

--Borro tabla blibliografia y clientes
DROP TABLE Bibliografia

--XVI TABLA
--Que almacena en cada fila los datos correspondientes a los distintos servicios a que pueden tener acceso los clientes
--en la biblioteca.
CREATE TABLE Servicio
(ser_id_servicio int not null,
ser_nombre varchar(75) not null,
primary key (ser_id_servicio)
)
--XVII TABLA
--Que almacena en cada fila los datos correspondientes a los nombres de usuario y claves necesarias para el acceso
--de los clientes a los servicios
CREATE TABLE Acceso
(acc_id_servicio int not null,
acc_id_cliente int not null,
acc_login varchar(100) not null,
acc_clave  varchar(150) not null,
primary key (acc_id_servicio,acc_id_cliente),
foreign key (acc_id_servicio) references Servicio  (ser_id_servicio),
--foreign key (acc_id_cliente) references Cliente (ci_id_cliente)

)

