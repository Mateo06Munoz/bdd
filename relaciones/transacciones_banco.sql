select * from transacciones
drop table transacciones
drop table banco
select * from banco


create table banco(
	codigo_banco int not null,
	codigo_transaciones int not null,
	detalle varchar(100),
	constraint banco_pk primary key (codigo_banco)
)
delete from transacciones 

alter table transacciones
add column codigoB int not null

alter table transacciones 
add constraint transacines_banco_fk
foreign key(codigoB)
references banco(codigo_banco)
--insert banco
insert into banco (codigo_banco,codigo_transaciones)
values(1,1);
insert into banco (codigo_banco,codigo_transaciones)
values(2,2);
insert into banco (codigo_banco,codigo_transaciones)
values(3,3);
insert into banco (codigo_banco,codigo_transaciones)
values(4,4);
insert into banco (codigo_banco,codigo_transaciones)
values(5,5);
insert into banco (codigo_banco,codigo_transaciones)
values(6,6);
insert into banco (codigo_banco,codigo_transaciones)
values(7,7);
insert into banco (codigo_banco,codigo_transaciones)
values(8,8);
insert into banco (codigo_banco,codigo_transaciones)
values(9,9);
insert into banco (codigo_banco,codigo_transaciones)
values(10,10)
--insert transacciones
insert into transacciones (codigob,codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1,50424,'11111',345,'C','1/1/2000','23:56');
insert into transacciones (codigob,codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2,5568,'22222',456,'C','2/1/2000','23:56');
insert into transacciones (codigob,codigo,numero_cuenta,monto,tipo,fecha,hora)
values (3,23432,'33333',135,'D','3/1/2000','23:56');
insert into transacciones (codigob,codigo,numero_cuenta,monto,tipo,fecha,hora)
values (4,234324,'44444',532,'C','4/1/2000','23:56');
insert into transacciones (codigob,codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5,6546,'55555',345,'C','5/1/2000','23:56');
insert into transacciones (codigob,codigo,numero_cuenta,monto,tipo,fecha,hora)
values (6,345345,'66666','909','D','6/1/2000','23:56');
insert into transacciones (codigob,codigo,numero_cuenta,monto,tipo,fecha,hora)
values (7,678678,'77777',789,'D','7/1/2000','23:56');
insert into transacciones (codigob,codigo,numero_cuenta,monto,tipo,fecha,hora)
values (8,345899,'88888',567,'D','8/1/2000','23:56');
insert into transacciones (codigob,codigo,numero_cuenta,monto,tipo,fecha,hora)
values (9,56704,'99999',546,'C','9/1/2000','23:56');
insert into transacciones (codigob,codigo,numero_cuenta,monto,tipo,fecha,hora)
values (10,56744,'00000',324,'C','10/1/2000','23:56')