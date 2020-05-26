--6 Marzo 2020
--Nueva base de datos de la calse.
CREATE DATABASE baseDeDatosClase
	ON
		(NAME = 'BibliotecaD01',
		FILENAME = 'C:\Desktop\BD\bibloteca_datos.mdf',
		size=30
		filegrowth = 15%)
		LOG ON

CREATE DATABASE baseDeDatosClase
	ON
		(NAME = 'BibliotecaD01',
		FILENAME = 'C:\Desktop\BD\bibloteca_datos.ldf',
		size=3
		filegrowth = 5MB)
		
--Si no deja crearla es porque no tienes permiso para crearla. Cambiar la carpeta del directorio.






























































