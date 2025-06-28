select * from productos
select * from ventas

create table ventas (
	id_ventas int ,
	codigo_productos int not null,
	fecha_venta date not null,
	cantidad int ,
	constraint ventas_pk  primary key (id_ventas)
) 
delete from productos

alter table productos 
add column idV int

alter table productos
add constraint productos_ventas_fk
foreign key (idV)
references ventas(id_ventas)

--inser ventas
insert into ventas (id_ventas,codigo_productos,fecha_venta)
values (1,1,'22/5/200');
insert into ventas (id_ventas,codigo_productos,fecha_venta)
values (2,2,'22/1/200');
insert into ventas (id_ventas,codigo_productos,fecha_venta)
values (3,3,'22/7/200');
insert into ventas (id_ventas,codigo_productos,fecha_venta)
values (4,4,'22/8/200');
insert into ventas (id_ventas,codigo_productos,fecha_venta)
values (5,5,'22/1/2000'); 
insert into ventas (id_ventas,codigo_productos,fecha_venta)
values (6,6,'22/12/200');
insert into ventas (id_ventas,codigo_productos,fecha_venta)
values (7,7,'22/2/200');
insert into ventas (id_ventas,codigo_productos,fecha_venta)
values (8,8,'22/8/200');
insert into ventas (id_ventas,codigo_productos,fecha_venta)
values (9,9,'22/7/200');
insert into ventas (id_ventas,codigo_productos,fecha_venta)
values (10,10,'23/8/200')
--inset prodcutos
insert into productos (idV,codigo,nombre,precio,stock)
values (1,001,'mateo',200,10);
insert into productos (idV,codigo,nombre,precio,stock)
values (2,002,'Juancito',200,10);
insert into productos (idV,codigo,nombre,precio,stock)
values (3,003,'Juana',200,10);
insert into productos (idV,codigo,nombre,precio,stock)
values (4,004,'luis',200,10);
insert into productos (idV,codigo,nombre,precio,stock)
values (5,005,'Jose',200,10);
insert into productos (idV,codigo,nombre,precio,stock)
values (6,006,'Ana',200,10);
insert into productos (idV,codigo,nombre,precio,stock)
values (7,007,'Alisson',200,10);
insert into productos (idV,codigo,nombre,precio,stock)
values (8,008,'Natalia',200,10);
insert into productos (idV,codigo,nombre,precio,stock)
values (8,009,'pepe',200,10);
insert into productos (idV,codigo,nombre,precio,stock)
values (10,010,'andres',200,10)