select * from cuentas

create table usuario (
	cedula char(5)not null,
	nombre varchar (25)not null,
	apellido varchar (25),
	tipo_cuneta varchar(20),
	limite_credito decimal(10,5),
	constraint usuario_pk primary key (cedula) 
)
delete from cuentas

alter table cuentas  
add column cedula_usiario char(5) not null

select * from usuario

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_usiario)
references usuario(cedula)

--insert en usuario
INSERT INTO usuario (cedula, nombre, apellido) 
VALUES ('01020', 'Juan', 'Pérez');
INSERT INTO usuario (cedula, nombre, apellido) 
VALUES ('02030', 'María', 'Gómez');
INSERT INTO usuario (cedula, nombre, apellido) 
VALUES ('03040', 'Carlos', 'Ramírez');
INSERT INTO usuario (cedula, nombre, apellido) 
VALUES ('04050', 'Lucía', 'Martínez');
INSERT INTO usuario (cedula, nombre, apellido) 
VALUES ('05060', 'Pedro', 'Sánchez');
INSERT INTO usuario (cedula, nombre, apellido) 
VALUES ('06070', 'Ana', 'Rodríguez');
INSERT INTO usuario (cedula, nombre, apellido) 
VALUES ('07080', 'Diego', 'Fernández');
INSERT INTO usuario (cedula, nombre, apellido) 
VALUES ('08091', 'Sofía', 'Jiménez');
INSERT INTO usuario (cedula, nombre, apellido) 
VALUES ('09101', 'Luis', 'Vega');
INSERT INTO usuario (cedula, nombre, apellido) 
VALUES ('10111', 'Elena', 'Cruz');
--insert cuentas
INSERT INTO cuentas (numero_cuenta,cedula_usiario, fecha_creacion, saldo,cedula_precio) 
VALUES ('A1001', '01020', '2022-09-05', 450.75,11111);
INSERT INTO cuentas (numero_cuenta, cedula_usiario, fecha_creacion, saldo,cedula_precio) 
VALUES ('A1002', '02030', '2022-11-12', 820.00,22222);
INSERT INTO cuentas (numero_cuenta, cedula_usiario, fecha_creacion, saldo,cedula_precio) 
VALUES ('A1003', '03040', '2023-01-22', 199.90,33333);
INSERT INTO cuentas (numero_cuenta, cedula_usiario, fecha_creacion, saldo,cedula_precio) 
VALUES ('A1004', '04050', '2023-03-10', 635.40,44444);
INSERT INTO cuentas (numero_cuenta, cedula_usiario, fecha_creacion, saldo,cedula_precio) 
VALUES ('A1005', '05060', '2022-12-01', 305.25,55555);
INSERT INTO cuentas (numero_cuenta,cedula_usiario, fecha_creacion, saldo,cedula_precio) 
VALUES ('A1006', '06070', '2023-04-14', 980.00,66666);
INSERT INTO cuentas (numero_cuenta,cedula_usiario, fecha_creacion, saldo,cedula_precio) 
VALUES ('A1007', '07080', '2022-08-30', 715.15,77777);
INSERT INTO cuentas (numero_cuenta,cedula_usiario, fecha_creacion, saldo,cedula_precio) 
VALUES ('A1008', '08091', '2023-06-20', 399.99,88888);
INSERT INTO cuentas (numero_cuenta,cedula_usiario, fecha_creacion, saldo,cedula_precio) 
VALUES ('A1009', '09101', '2023-08-08', 870.60,99999);
INSERT INTO cuentas (numero_cuenta,cedula_usiario, fecha_creacion, saldo,cedula_precio) 
VALUES ('A1010', '10111', '2023-06-18', 870.60,99699)


