-- productos 
select  * from productos
where nombre like 'q%'

select  * from productos
where descripcion is null

select  * from productos
where precio 
between '2' and '3'

--cuentas
select  * from cuentas

select  numero_cuenta,saldo from cuentas

select  * from cuentas
where fecha_creacion 
between '3/6/2025' and '3/4/2025'

select  numero_cuenta,saldo from cuentas
where fecha_creacion  
between '3/6/2025' and '3/4/2025'

--estudiantes
select  nombre,cedula from estudiantes

select   nombre,apellido,cedula from estudiantes
where cedula like '17%'

select   nombre,apellido from estudiantes
where nombre like 'a%'

--registro_entrada 
select  cedula_empleado,fecha,hora from registro_entrada

select  *from registro_entrada
where hora
between '7:00' and '14:00'

select  *from registro_entrada
where hora >'8:00'
--videojuegos
select * from videojuegos
where nombre like 'c%'

select * from videojuegos
where valoracion
between '9' and '10'

select * from videojuegos
where descripcion is null 

--trasacciones
select * from transacciones
where tipo ='D'

select codigo,monto,tipo,fecha from transacciones
where fecha <> null
--o tambien 
select codigo,monto,tipo,fecha from transacciones
where fecha !=null


	