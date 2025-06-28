select *from estudiantes

create table profesores (
	codigo int ,
	nombre varchar(50)not null,
	constraint profesores_pk primary key (codigo)
)

delete from estudiantes

alter table estudiantes 
add  column codigo int 

alter table estudiantes 
add constraint estudiantes_profesores_fk
foreign key (codigo)
references profesores(codigo)

--insert profesores
insert into profesores(codigo,nombre)
values (1,'ana');
insert into profesores(codigo,nombre)
values (2,'Francisco');
insert into profesores(codigo,nombre)
values (3,'ana');
insert into profesores(codigo,nombre)
values (4,'ana');
insert into profesores(codigo,nombre)
values (5,'ana');
insert into profesores(codigo,nombre)
values (6,'ana');
insert into profesores(codigo,nombre)
values (7,'ana');
insert into profesores(codigo,nombre)
values (8,'Francisco');
insert into profesores(codigo,nombre)
values (9,'ana');
insert into profesores(codigo,nombre)
values (10,'ana');
--insert  estudiantes
insert into estudiantes (codigo,cedula,nombre,apellido,email,fecha_nacimiento)
values (1,'1727047720','mateo','muñoz','maTEOWRR@gmail.com','28/6/2008');
insert into estudiantes (codigo,cedula,nombre,apellido,email,fecha_nacimiento)
values (2,'1727047520','nina','guzman','maTEOWRR@gmail.com','28/6/2008');
insert into estudiantes (codigo,cedula,nombre,apellido,email,fecha_nacimiento)
values (3,'1777047720','elvis','flores','maTEOWRR@gmail.com','28/6/2008');
insert into estudiantes (codigo,cedula,nombre,apellido,email,fecha_nacimiento)
values (4,'1787047720','jose','muñoz','maTEOWRR@gmail.com','28/6/2008');
insert into estudiantes (codigo,cedula,nombre,apellido,email,fecha_nacimiento)
values (5,'1707047720','mateo','muñoz','maTEOWRR@gmail.com','28/6/2008');
insert into estudiantes (codigo,cedula,nombre,apellido,email,fecha_nacimiento)
values (6,'1237047720','mateo','muñoz','maTEOWRR@gmail.com','28/6/2008');
insert into estudiantes (codigo,cedula,nombre,apellido,email,fecha_nacimiento)
values (7,'1887047720','mateo','muñoz','maTEOWRR@gmail.com','28/6/2008');
insert into estudiantes (codigo,cedula,nombre,apellido,email,fecha_nacimiento)
values (8,'1007047720','mateo','muñoz','maTEOWRR@gmail.com','28/6/2008');
insert into estudiantes (codigo,cedula,nombre,apellido,email,fecha_nacimiento)
values (9,'1725047720','mateo','muñoz','maTEOWRR@gmail.com','28/6/2008');
insert into estudiantes (codigo,cedula,nombre,apellido,email,fecha_nacimiento)
values (10,'1787047920','mateo','muñoz','maTEOWRR@gmail.com','28/6/2008')