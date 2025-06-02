--crear videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar (50)not null ,
	descripcion varchar (50),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (8958653,'mateo','juego para decestresarse',229)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (34324324,'ana','juego para divertirce',325)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (6456546,'jose','juego para descarsar',456)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (945635,'natalia','juego para dormir',678)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (14356587,'alisson','juego para estresarce',100)

select * from videojuegos

insert into videojuegos (codigo,nombre,valoracion)
values (77777,'luis',3567)

insert into videojuegos (codigo,nombre,valoracion)
values (455546,'franklim',586)

insert into videojuegos (codigo,nombre,valoracion)
values (005424,'evliyn',345)

select * from videojuegos