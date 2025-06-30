create table producto(
	codigo int not null,
	nombre varchar (50)not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)
create table provedores(
	codigo int not null,
	nombre varchar (50)not null,
	telefono char(10) not null,
	constraint provedores_pk primary key (codigo)
)
create table productos_por_provedor(
	pp_codigo_producto int not null,
	pp_codigo_provedor int not null,
	precio money not null,
	constraint producto_fk foreign key(pp_codigo_producto) references producto(codigo),
	constraint provedores_fk foreign key(pp_codigo_provedor) references provedores(codigo),
	constraint producto_pk primary key(pp_codigo_producto,pp_codigo_provedor)
)

insert into producto(codigo,nombre,stock)
values (100,'doritos',100);
insert into producto(codigo,nombre,stock)
values (200,'cachitos',200);
insert into producto(codigo,nombre,stock)
values (300,'papas',300);
insert into producto(codigo,nombre,stock)
values (400,'takis',0)

select *from producto

insert into provedores(codigo,nombre,telefono)
values(1,'Snacks SA','0979516266');
insert into provedores(codigo,nombre,telefono)
values(2,'distrinsnacks ','0935792846')

select *from provedores

insert into productos_por_provedor (pp_codigo_producto,pp_codigo_provedor,precio)
values (300,1,0.48);
insert into productos_por_provedor (pp_codigo_producto,pp_codigo_provedor,precio)
values (300,2,0.49);
insert into productos_por_provedor (pp_codigo_producto,pp_codigo_provedor,precio)
values (100,1,0.50);
insert into productos_por_provedor (pp_codigo_producto,pp_codigo_provedor,precio)
values (200,1,0.51);
insert into productos_por_provedor (pp_codigo_producto,pp_codigo_provedor,precio)
values (400,2,0.50)
select *from productos_por_provedor

select prod.codigo,prod.nombre,prov.nombre,pp.precio from producto prod,provedores prov,productos_por_provedor pp
where prod.codigo=pp.pp_codigo_producto and prov.codigo=pp.pp_codigo_provedor
and prod.codigo=300