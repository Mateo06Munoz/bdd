--crear estudiante de informacion

create table 	(
	cedula char(10)not null,
	nombre varchar(50)not null,
	apellido varchar(50)not null ,
	email varchar(50)not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1727047720','mateo','muñoz','maTEOWRR@gmail.com','28/6/2008')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1727047520','ana','lopez','anaefef@ail.com','28/6/2008')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1727047420','natalia','lima','nataliaRR@gmail.com','28/6/2008')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1727043320','alesson','rodriguez','alisosoR@gmail.com','28/6/2008')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1727047320','jeferson','parrales','jfersonpara@gmail.com','28/6/2008')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1727042220','elizabeth','constante','elizabet@gmail.com','28/6/2008')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1727041120','evelyn','mantuano','enlyn@gmail.com','28/6/2008')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1727046720','karina','buestas','karina@gmail.com','28/6/2008')

select * from estudiantes