--crear transacciones
create table transacciones (
	codigo int not null,
	numero_cuenta char (5)not null,
	monto money not null,
	tipo char(1)not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
)
insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (005424,'11111',345,'C','1/1/2000','23:56')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5568,'22222',456,'C','2/1/2000','23:56')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (23432,'33333',135,'D','3/1/2000','23:56')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (234324,'44444',532,'C','4/1/2000','23:56')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (6546,'55555',345,'C','5/1/2000','23:56')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (345345,'66666','909','D','6/1/2000','23:56')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (678678,'77777',789,'D','7/1/2000','23:56')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (345899,'88888',567,'D','8/1/2000','23:56')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (56704,'99999',546,'C','9/1/2000','23:56')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (56744,'00000',324,'C','10/1/2000','23:56')

select * from transacciones