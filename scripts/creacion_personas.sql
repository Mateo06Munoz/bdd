--crear tabla personas
drop table personas
create table personas(
	cedula char (10)not null ,
	nombre varchar (50)not null,
	apellido varchar (50)not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorro money,
	numero_hijos int,
	constraint perersonas_pk primary key (cedula)
)
insert into personas(cedula,nombre,apellido)
values ('1727047720','Mateo','Muñoz')

insert into personas(cedula,nombre,apellido,estatura)
values ('1727045720','Pepe','Mujica',1.85)

insert into personas(cedula,nombre,apellido,numero_hijos)
values ('1727545720','Pepe','Mujica',2)

insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorro)
values ('1727585720','Estefani','Rosales',1,1.58,'22/05/2000','22:54',200.34)

select	cedula,nombre,numero_hijos,estatura	from personas 

select * from personas