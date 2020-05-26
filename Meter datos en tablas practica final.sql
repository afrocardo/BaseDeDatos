--Meter datos en tablas
--insert into Employees(LastName,FirstName) values ('PEPE','GOTERA')
--Meter datos en Provincias
--use Bibliografia 
select * from Provincias
select * from Paises

--provincias
INSERT into Provincias(pro_codprovincia,pro_nombreprovincia) values (1,'Caceres') 
update Provincias set pro_nombreprovincia='Caceres' where pro_codprovincia=1;
INSERT into Provincias(pro_codprovincia,pro_nombreprovincia) values (2,'Badajoz')
INSERT into Provincias(pro_codprovincia,pro_nombreprovincia) values (3,'Toledo')
INSERT into Provincias(pro_codprovincia,pro_nombreprovincia) values (4,'Oporto')
--paises
INSERT into Paises(pai_codpais,pai_nombrepais) values (1,'Espania') 
INSERT into Paises(pai_codpais,pai_nombrepais) values (2,'Portugal') 
--autor de provinicas y paises
INSERT into Autor(aut_id_autor,aut_nombre,aut_direccion,aut_localidad,aut_codpostal,aut_codprovincia,aut_direccioncorreoe,aut_codpais) values (1,'Antonio Machado','Calle Janas 20','Toledo','06789','3','antoniomachado@gmail.com','1') 
INSERT into Autor(aut_id_autor,aut_nombre,aut_direccion,aut_localidad,aut_codpostal,aut_codprovincia,aut_direccioncorreoe,aut_codpais) values (2,'Jose Saramago','Calle Jacinto Benavente 2','Oporto','08729','4','josesaramago@gmail.com','2')
--autortelf de autor
INSERT into Autortelf(auf_id_autor,auf_telefono) values (1,'686456761') 
INSERT into Autortelf(auf_id_autor,auf_telefono) values (2,'676456761')
select * from Autortelf
--Recurso
select * from Recurso
INSERT into Recurso(rec_id_recurso,rec_titulo,rec_subtitulo,rec_isbn,rec_issn,rec_fecha_creacion,rec_descripcion,rec_resumen,rec_codigo,rec_url) values (1,'Libro','Literatura Espaniola','ES029484','ESI93927','2001-24-01 17:41:45.113','Literatura del siglo XX de posguerra en Espania','Machado cuenta historias sobre familias en la posguerra','1','www.antoniomachado.com')
INSERT into Recurso(rec_id_recurso,rec_titulo,rec_subtitulo,rec_isbn,rec_issn,rec_fecha_creacion,rec_descripcion,rec_resumen,rec_codigo,rec_url) values (2,'Articulo','Literatura Portuguesa','PO0293449','POI93897','2002-20-01 10:41:45.113','Literatura del siglo XX de crisis en Portugal','Saramago relata en el articulo temas sociales en la sociedad portuguesa del siglo XX','2','www.josesamarago.com')
INSERT into Recurso(rec_id_recurso,rec_titulo,rec_subtitulo,rec_isbn,rec_issn,rec_fecha_creacion,rec_descripcion,rec_resumen,rec_codigo,rec_url) values (3,'Monografia','Monografia sobre diferentes corrientes literarias en el siglo XX','PO02957','POI938972','2001-20-01 14:30:45.113','Saramago explica todas las corrientes literarias surgidas en el siglo XX','Saramago destaca las tres corrientes literarias que surgieron en el siglo XX en Portugal','3','www.josesamarago.com')

--Responsable
select * from Responsable
INSERT into Responsable(res_id_autor,res_id_recurso,res_grado) values (1,'1','Alto')
INSERT into Responsable(res_id_autor,res_id_recurso,res_grado) values (2,'2','Alto')
INSERT into Responsable(res_id_autor,res_id_recurso,res_grado) values (2,'3','Alto')
--Monografia
--Articulo
--Patente

--Texto
INSERT into  Editor(edi_id_editor,edi_nombre,edi_direccion,edi_localidad,edi_codpostal,edi_telefono) values (1,'Marco Mendez','Calle Moratalaz 12','Madrid','28001','678954324')
INSERT into  Editor(edi_id_editor,edi_nombre,edi_direccion,edi_localidad,edi_codpostal,edi_telefono) values (2,'Elena Gameiro','Calle Dos Santos 15','Oporto','24000','687647321')
select * from Editor

--Soporte
INSERT into  Soporte(sop_id_soporte,sop_denominacion) values (1,'Papel')
INSERT into  Soporte(sop_id_soporte,sop_denominacion) values (2,'Digital')
select * from Soporte

--Idiomas
INSERT into  Idioma(idi_id_idioma,idi_nombre) values (1,'Espaniol')
INSERT into  Idioma(idi_id_idioma,idi_nombre) values (2,'Ingles')
select * from Idioma

--Ejemplar 
drop table Ejemplar
--Cambia tipo de dato de atributo en tabla
alter table Ejemplar
alter column eje_lugar varchar(150)

INSERT into Ejemplar(eje_id_ejemplar,eje_id_recurso,eje_id_editor,eje_id_soporte,eje_id_idioma,eje_fecha_publicacion,eje_num_edicion,eje_lugar) values (1,1,1,1,1,'2005-22-01 7:41:45','Primera edicion','Madrid')
INSERT into Ejemplar(eje_id_ejemplar,eje_id_recurso,eje_id_editor,eje_id_soporte,eje_id_idioma,eje_fecha_publicacion,eje_num_edicion,eje_lugar) values (2,2,2,1,2,'2008-24-01 11:41:45','Segunda edicion','Barcelona')
INSERT into Ejemplar(eje_id_ejemplar,eje_id_recurso,eje_id_editor,eje_id_soporte,eje_id_idioma,eje_fecha_publicacion,eje_num_edicion,eje_lugar) values (3,3,2,2,2,'2012-24-01 18:41:45','Tercera edicion','Caceres')
select * from Ejemplar

--Cliente
INSERT into Cliente(ci_id_cliente,ci_dni,ci_nombre,ci_direccion,ci_localidad,ci_codpostal,ci_telefono,ci_nombre_directorio) values (1,'09091930K','Dario','Calle de los Almendros 21','Benalmadena','29630','678546354','Dario Gomez')
INSERT into Cliente(ci_id_cliente,ci_dni,ci_nombre,ci_direccion,ci_localidad,ci_codpostal,ci_telefono,ci_nombre_directorio) values (2,'05095930L','Daniela','Calle Paz 12','Badajoz','06001','672546334','Daniela Lopez')
INSERT into Cliente(ci_id_cliente,ci_dni,ci_nombre,ci_direccion,ci_localidad,ci_codpostal,ci_telefono,ci_nombre_directorio) values (3,'08411431N','Lorena','Calle Salvadores 16','Barcelona','08001','628543356','Lorena Martinez')
select * from Cliente


--Bibliografia
--Consulta
alter table Consulta
alter column con_hora time not null
INSERT into Consulta(con_id_ejemplar,con_id_cliente,con_fecha,con_hora,con_texto_anotacion) values (1,1,'2002-22-01 8:41:4','2 PM','Buen libro')
INSERT into Consulta(con_id_ejemplar,con_id_cliente,con_fecha,con_hora,con_texto_anotacion) values (1,1,'2003-22-01 8:41:4','4:00 PM','Buena redaccion')
select * from Consulta

--Servicio
INSERT into  Servicio(ser_id_servicio,ser_nombre) values (1,'Visualizacion de recurso')
INSERT into  Servicio(ser_id_servicio,ser_nombre) values (2,'Descarga de recurso')
INSERT into  Servicio(ser_id_servicio,ser_nombre) values (3,'Reserva de recurso')
select * from Servicio

--Acceso 
INSERT into  Acceso(acc_id_servicio,acc_id_cliente,acc_login,acc_clave) values (1,1,'Dario1','dario123')
INSERT into Acceso(acc_id_servicio,acc_id_cliente,acc_login,acc_clave) values (2,1,'Dario1','dario123')
INSERT into  Acceso(acc_id_servicio,acc_id_cliente,acc_login,acc_clave) values (3,1,'Dario1','dario123')

INSERT into  Acceso(acc_id_servicio,acc_id_cliente,acc_login,acc_clave) values (1,2,'Daniela1','daniela145')
INSERT into Acceso(acc_id_servicio,acc_id_cliente,acc_login,acc_clave) values (2,2,'Daniela1','daniela145')
INSERT into  Acceso(acc_id_servicio,acc_id_cliente,acc_login,acc_clave) values (3,2,'Daniela','daniela145')

INSERT into  Acceso(acc_id_servicio,acc_id_cliente,acc_login,acc_clave) values (1,3,'Lorena1','lorena345')
INSERT into Acceso(acc_id_servicio,acc_id_cliente,acc_login,acc_clave) values (2,3,'Lorena1','lorena345')
INSERT into  Acceso(acc_id_servicio,acc_id_cliente,acc_login,acc_clave) values (3,3,'Lorena','lorena345')
select * from Acceso