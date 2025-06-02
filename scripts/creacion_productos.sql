--tabla producctos
drop table productos
create table productos(
	codigo int not null,
	nombre varchar (50)not null,
	descripcion varchar (50),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)
insert into productos (codigo,nombre,descripcion,precio,stock)
values (001,'Juan','producto desechable',20,70)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (002,'Juancito','producto sintetico',25,95)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (003,'Juana','producto vegetariano',80,60)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (004,'luis','producto comestible',60,98)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (005,'Jose','producto deplorable',22,45)

insert into productos (codigo,nombre,precio,stock)
values (006,'Ana',22,45)

insert into productos (codigo,nombre,precio,stock)
values (007,'Alisson',22,45)

insert into productos (codigo,nombre,precio,stock)
values (008,'Natalia',22,45)

select * from productos