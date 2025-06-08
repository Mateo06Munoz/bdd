-- productos
delete from productos
where descripcion is null

select *from  productos

--cuentas 
delete from cuentas
where numero_cuenta like '10%'

select *from  cuentas

--estudiantes 

delete from estudiantes
where cedula like '%05'

select *from  estudiantes

--registros_entradas
delete from registro_entrada
where fecha 
between '1/06/1000' and '30/06/2025'

select *from  registro_entrada

--videojuegos

delete from videojuegos
where valoracion <7

select *from  videojuegos
--transacciones
delete from transacciones
where hora
between '14:00' and '18:00'

delete from transacciones
where fecha
between '1/8/2025' and '30/8/2025'

select *from  transacciones

