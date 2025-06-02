--creacion registros de entrtada 
create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char (10)not null,	
	fecha date not null,
	hora time not null,
	constraint registro_entrada_pk primary key (codigo_registro)
)
insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (24324324,'2343244345','30/5/1897','14:55')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (24324464,'2345244345','30/5/1897','14:55')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (345345345,'2343247645','30/5/1897','14:55')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (678678678,'2343244465','30/5/1897','14:55')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (234324324,'2346724435','30/5/1897','14:55')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (546456,'2343278345','30/5/1897','14:55')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (678678,'2343256345','30/5/1897','14:55')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (465689,'2343223345','30/5/1897','14:55')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (36453793,'23455545','30/5/1897','14:55')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (8958653,'2343334345','30/5/1897','14:55')

select * from registro_entrada