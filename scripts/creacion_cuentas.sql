--crear cuentas de informacion
drop table cuentas
create table cuentas(
	numero_cuenta char(5)not null,
	cedula_precio char (5)not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)