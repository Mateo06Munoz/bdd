select *from registro_entrada

create table empleado(
	codigo_empleado 	int not null,
	nombre varchar (25)not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key (codigo_empleado)
)
delete from registro_entrada

alter table registro_entrada
add column codigo int 

alter table registro_entrada
add constraint registro_entrada_empleado
foreign key (codigo)
references empleado (codigo_empleado)
--inset empleado
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (2201,'mateo','1/8/2023','8:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (2202,'mateo','1/9/2023','9:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (2203,'mateo','1/8/2023','10:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (2204,'mateo','1/9/2023','8:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (2205,'mateo','1/8/2023','11:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (2206,'mateo','1/9/2023','13:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (2207,'mateo','1/10/2023','8:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (2208,'mateo','1/11/2023','8:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (2209,'mateo','1/12/2023','9:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values (2210,'mateo','1/8/2023','9:00'
--inset registro_entrada
insert into registro_entrada (codigo,codigo_registro,cedula_empleado,fecha,hora)
values (2201,24324324,'2343244345','30/5/1897','14:55');
insert into registro_entrada (codigo,codigo_registro,cedula_empleado,fecha,hora)
values (2202,24324464,'2345244345','30/5/1897','14:55');
insert into registro_entrada (codigo,codigo_registro,cedula_empleado,fecha,hora)
values (2203,345345345,'2343247645','30/5/1897','14:55');
insert into registro_entrada (codigo,codigo_registro,cedula_empleado,fecha,hora)
values (2204,678678678,'2343244465','30/5/1897','14:55');
insert into registro_entrada (codigo,codigo_registro,cedula_empleado,fecha,hora)
values (2205,234324324,'2346724435','30/5/1897','14:55');
insert into registro_entrada (codigo,codigo_registro,cedula_empleado,fecha,hora)
values (2206,546456,'2343278345','30/5/1897','14:55');
insert into registro_entrada (codigo,codigo_registro,cedula_empleado,fecha,hora)
values (2207,678678,'2343256345','30/5/1897','14:55');
insert into registro_entrada (codigo,codigo_registro,cedula_empleado,fecha,hora)
values (2208,465689,'2343223345','30/5/1897','14:55');
insert into registro_entrada (codigo,codigo_registro,cedula_empleado,fecha,hora)
values (2209,36453793,'23455545','30/5/1897','14:55');
insert into registro_entrada (codigo,codigo_registro,cedula_empleado,fecha,hora)
values (2210,8958653,'2343334345','30/5/1897','14:55')