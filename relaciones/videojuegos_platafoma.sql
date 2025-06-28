select *from videojuegos
select *from plataformas
create table plataformas(
	id_plataformas int ,
	nombre_plataformas varchar(50)not null,
	codigo_videojuego int ,
	constraint plataformas_pk primary key (id_plataformas)
)
delete from videojuegos

alter table videojuegos
add column idP int 

alter table videojuegos
add constraint videojuegos_plataformas_fk
foreign key (idP)
references plataformas(id_plataformas)
--inset plataformas
insert into plataformas(id_plataformas,nombre_plataformas)
values (1,'claro');
insert into plataformas(id_plataformas,nombre_plataformas)
values (2,'claro');
insert into plataformas(id_plataformas,nombre_plataformas)
values (3,'claro');
insert into plataformas(id_plataformas,nombre_plataformas)
values (4,'claro');
insert into plataformas(id_plataformas,nombre_plataformas)
values (5,'claro');
insert into plataformas(id_plataformas,nombre_plataformas)
values (6,'claro');
insert into plataformas(id_plataformas,nombre_plataformas)
values (7,'claro');
insert into plataformas(id_plataformas,nombre_plataformas)
values (8,'claro');
insert into plataformas(id_plataformas,nombre_plataformas)
values (9,'claro');
insert into plataformas(id_plataformas,nombre_plataformas)
values (10,'claro')
--inset videojuegos
insert into videojuegos (idP,codigo,nombre,valoracion)
values (1,77777,'luis',3567);
insert into videojuegos (idP,codigo,nombre,valoracion)
values (2,22222,'luis',3567);
insert into videojuegos (idP,codigo,nombre,valoracion)
values (3,33333,'luis',3567);
insert into videojuegos (idP,codigo,nombre,valoracion)
values (4,44444,'luis',3567);
insert into videojuegos (idP,codigo,nombre,valoracion)
values (5,55555,'luis',3567);
insert into videojuegos (idP,codigo,nombre,valoracion)
values (6,66666,'luis',3567);
insert into videojuegos (idP,codigo,nombre,valoracion)
values (7,11111,'luis',3567);
insert into videojuegos (idP,codigo,nombre,valoracion)
values (8,88888,'luis',3567);
insert into videojuegos (idP,codigo,nombre,valoracion)
values (9,99499,'luis',3567);
insert into videojuegos (idP,codigo,nombre,valoracion)
values (10,12346,'luis',3567)