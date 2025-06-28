select *from clientes

create table compras	(
	id_compra int not null,
	cedula char(10),
	fechat_compra date not null,
	monto decimal(10,2)not null,
	constraint compras_pk primary key (id_compra)  
)

delete from clientes

alter table clientes
add column idCompras int not null


alter table clientes 
add constraint clientes_compras_fk
foreign key (idCompras)
references compras (id_compra)

--insert compras 
insert into compras(id_compra,cedula,fechat_compra,monto)
values (1,'1727047720','25/6/2000',470.45) ;
insert into compras(id_compra,cedula,fechat_compra,monto)
values (2,'1727000720','25/9/2000',245.45) ;
insert into compras(id_compra,cedula,fechat_compra,monto)
values (3,'1654908346','25/12/2000',8568.45) ;
insert into compras(id_compra,cedula,fechat_compra,monto)
values (4,'1727357720','25/9/2000',4657.45) ;
insert into compras(id_compra,cedula,fechat_compra,monto)
values (5,'1727557720','25/3/2000',99.45) ;
insert into compras(id_compra,cedula,fechat_compra,monto)
values (6,'1727777720','25/6/2000',470.00) ;
insert into compras(id_compra,cedula,fechat_compra,monto)
values (7,'1727337720','25/8/2000',200.45) ;
insert into compras(id_compra,cedula,fechat_compra,monto)
values (8,'1727007720','25/7/2000',324.45) ;
insert into compras(id_compra,cedula,fechat_compra,monto)
values (9,'1727677720','25/3/2000',567.55) ;
insert into compras(id_compra,cedula,fechat_compra,monto)
values (10,'1727887720','25/4/2000',345.22) 

--inset Clientes
insert into clientes (idCompras,cedula,nombre,apellido)
values (1,'1109047720','Mateo','Muñoz');
insert into clientes (idCompras,cedula,nombre,apellido)
values (2,'1727087720','Ana','angel');
insert into clientes (idCompras,cedula,nombre,apellido)
values (3,'1727547720','Allison ','rodriguez');
insert into clientes (idCompras,cedula,nombre,apellido)
values (4,'1727947720','Monica','Muñoz');
insert into clientes (idCompras,cedula,nombre,apellido)
values (5,'1727357720','david','lopez');
insert into clientes (idCompras,cedula,nombre,apellido)
values (6,'1727076720','andres','Muñoz');
insert into clientes (idCompras,cedula,nombre,apellido)
values (7,'1727012720','Franklin','Muñoz');
insert into clientes (idCompras,cedula,nombre,apellido)
values (8,'1727090720','Monica','Muñoz');
insert into clientes (idCompras,cedula,nombre,apellido)
values (9,'1727049720','Mateo','Muñoz');
insert into clientes (idCompras,cedula,nombre,apellido)
values (10,'1727000720','Ana','lopes')