--crear cuentas de informacion
drop table cuentas
create table cuentas(
	numero_cuenta char(5)not null,
	cedula_precio char (5)not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_precio,fecha_creacion,saldo)
values('38389','44409','22/06/2008',500)

insert into cuentas (numero_cuenta,cedula_precio,fecha_creacion,saldo)
values('38387','45679','23/06/2008',500)

insert into cuentas (numero_cuenta,cedula_precio,fecha_creacion,saldo)
values('38385','34589','24/06/2008' ,190)

insert into cuentas (numero_cuenta,cedula_precio,fecha_creacion,saldo)
values('38382','24789','25/06/2008',900)

insert into cuentas (numero_cuenta,cedula_precio,fecha_creacion,saldo)
values('38380','44339','26/06/2008',800)

insert into cuentas (numero_cuenta,cedula_precio,fecha_creacion,saldo)
values('38334','44459','27/06/2008',700)

insert into cuentas (numero_cuenta,cedula_precio,fecha_creacion,saldo)
values('38377','49809','28/06/2008',600)

insert into cuentas (numero_cuenta,cedula_precio,fecha_creacion,saldo)
values('38311','43409','29/06/2008',300)

insert into cuentas (numero_cuenta,cedula_precio,fecha_creacion,saldo)
values('38364','54409','30/06/2008',400)

insert into cuentas (numero_cuenta,cedula_precio,fecha_creacion,saldo)
values('98389','78409','17/06/2008',200)

select * from cuentas