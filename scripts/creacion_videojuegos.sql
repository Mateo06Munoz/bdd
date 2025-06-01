--crar videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar (50)not null ,
	descripcion varchar (50),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)