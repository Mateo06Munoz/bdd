--producctos
select *from productos

update productos set stock =0
where stock is null

--cuentas 
select *from cuentas

update cuentas  set saldo=10
where cedula_precio is null

--estudiantes
select * from estudiantes

update estudiantes set apellido ='Hernandez'
where cedula  like '17%'

--registros_entradas

select * from registro_entrada

update registro_entrada set cedula_empleado='0823456789'
where fecha 
between '1/8/111' and '30/8/2025'

--videojuegos
select * from videojuegos

update 	videojuegos set descripcion='mejor puntaje'
where valoracion >9

--transacciones
select*from transacciones

update transacciones set tipo ='T'
where monto 
between '100' and '500' 

update transacciones set tipo ='T'
where fecha 
between '1/7/1000' and '30/7/2025' 

update transacciones set tipo ='T'
where hora 
between '14:00' and '20:00'