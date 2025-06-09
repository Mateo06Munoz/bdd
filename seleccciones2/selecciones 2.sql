
-- productos
select *from productos 
where stock ='10' and precio <'10'

select nombre,stock from productos 
where nombre like '%m%' or descripcion =' ' 

select nombre from productos 
where descripcion is null or stock ='0'

--cuentas 

select *  from cuentas

select numero_cuenta,saldo  from cuentas
where saldo >'100' and saldo<'1000'

select numero_cuenta from cuentas
where fecha_creacion
between  '8/6/2025'and '8/6/2024'

select numero_cuenta from cuentas
where saldo='0'or cedula_precio like '%2'

--estudiantes 

select *from estudiantes

select nombre,apellido from estudiantes
where nombre like 'm%' or apellido like '%z'

select nombre from estudiantes
where cedula like '%32%' or cedula like '18%'

select nombre,apellido from estudiantes
where cedula like '%06' or cedula like '17%'

--registro_entradas
select *from registro_entrada


select * from registro_entrada
where fecha  between '1/8/1000' and '31/8/1000' or cedula_empleado like '17%'

select * from registro_entrada
where fecha  between '1/7/1000' and '30/7/1000' or  cedula_empleado like '17%'and hora between '8:00' and '12:00'

select * from registro_entrada
where fecha between '1/7/1000' and '30/7/1000' or  cedula_empleado like '17%'and hora between '8:00' and '12:00'or 
fecha between '1/8/1000' and '30/8/1000' or  cedula_empleado like '08%'and hora between '9:00' and '13:00'

--videojuegos 
select *from videojuegos

select *from videojuegos
where nombre like 'c%' or valoracion ='7' 


select *from videojuegos
where codigo between '3' and '7' or valoracion ='7'

select *from videojuegos
where (valoracion >'7' and nombre like 'c%') or (valoracion >'8' and nombre like 'd%')

--transacciones 
select *from transacciones 

select *from transacciones
where tipo='C' and numero_cuenta between '222001' and '22004'

select *from transacciones
where tipo='D' and fecha ='25/5/1000' and  	 numero_cuenta between '22007' and '22010'


select *from transacciones
where codigo between '1'and '5' and numero_cuenta between '22002' and '22004' and fecha between'26/05/1000' and '29/05/2025' 
