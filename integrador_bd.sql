-- Creamos Base de Datos llamada "integrador_bd"
create database if not exists integrador_cac;

-- Seleccionamos trabajar con Base de datos llamada "integrador_bd"
use integrador_cac;

-- Creamos estructura de la Tabla llamada "oradores"
create table oradores(
	id_orador int(11) not null auto_increment primary key,
	nombre varchar(40) not null unique,
	apellido varchar(40) not null unique,
	mail varchar(40) not null unique,
	tema varchar(30) not null,
	fecha_alta timestamp not null
);

-- Mostramos la estructura de la tabla creada llamada "oradores"
describe oradores;

-- Cargamos 10 registros de datos en la Tabla "oradores"
insert into oradores (nombre, apellido, mail, tema, fecha_alta) values
("Javier", "Alegre", "correo01@correo.com", "Java", "2018-12-14 14:41:10"),
("Pablo", "Batalla", "correo02@correo.com", "Python", "2018-12-14 08:15:30"),
("Manuel", "Gomez", "correo03@correo.com", "Javascripts", "2018-12-14 20:10:05"),
("Francisco", "Palermo", "correo04@correo.com", "PHP", "2018-12-14 16:20:10"),
("Claudio", "Rincon", "correo05@correo.com", "NodeJS", "2020-04-04 11:06:14"),
("Cesar", "Maldonado", "correo06@correo.com", "Java", "2008-12-14 08:41:10"),
("Daniel", "Guerra", "correo07@correo.com", "Python", "2018-10-14 18:15:30"),
("Oscar", "Gonzales", "correo08@correo.com", "Javascripts", "2020-12-14 20:15:05"),
("Fernando", "Peña", "correo09@correo.com", "PHP", "2018-12-09 17:20:10"),
("Lionel", "Garcia", "correo10@correo.com", "NodeJS", "2022-04-04 12:26:14");

-- Traemos todos los registros ingresados de la Tabla "oradores"
select * from oradores;

-- Borrar Tabla creada llamada "oradores"
drop table if exists oradores;

-- Borrar Base de Datos creada llamada "integrador_cac"
drop database if exists integrador_cac;