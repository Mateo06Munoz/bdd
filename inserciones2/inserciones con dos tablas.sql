--usuario y cuentas
select c.numero_cuenta,u.nombre from cuentas c,usuario u
where 
c.cedula_usiario=u.cedula
and saldo 
between '100' and '1000'

select* from cuentas c,usuario u
where 
c.cedula_usiario=u.cedula
and fecha_creacion
between '2022/09/21' and '2023/09/21'
--clientes y compras 

select c.nombre,c.apellido,c from clientes c,compras co
where
c.idCompras=co.id_compra 
and c.cedula like '%7%'

select c.cedula,c.nombre,c.apellido,c.edad from clientes c,compras co
where
c.idCompras=co.id_compra 
and c.cedula ='1727947720'
--estudiantes y profesor
select *from estudiantes e,profesores p
where 
e.codigo=p.codigo
and e.apellido like  '%n%'

select e.codigo,e.nombre,e.apellido,e.email,e.fecha_nacimiento from estudiantes e,profesores p
where 
e.codigo=p.codigo
and p.nombre ='Francisco'

--persona y prestamo 

select p.cantidad_ahorrada,pe.nonto,p.nombre,p.apellido from personas p,prestamo pe
where 
p.cedula=pe.cedula
and pe.nonto
between '100' and '1000'

select p.cantidad_ahorrada,pe.nonto,p.nombre,p.apellido,p.estatura,p.fecha_nacimiento,p.hora_nacimiento from personas p,prestamo pe
where 
p.cedula=pe.cedula
and p.nombre ='Sean'

--Productos y ventas
select p.nombre,p.stock,v.cantidad from productos p,ventas v
where 
p.idV=v.id_ventas
and p.nombre like '%m%' or p.descripcion ='0'

select p.nombre,p.stock from productos p,ventas v
where 
p.idV=v.id_ventas
and v.cantidad ='5'

--transacciones y bancos 
select *from transacciones t,banco b
where 
t.codigoB=b.codigo_banco
and
t.tipo= 'C' and numero_cuenta
between '22001' and '22004'

select t.codigob,t.codigo,t.numero_cuenta,t.monto,t.tipo,t.fecha,t.hora from transacciones t,banco b
where 
t.codigoB=b.codigo_banco
and
t.codigoB= '1'

--videojuego y plataformas 

select* from videojuegos v,plataformas p
where 
v.idP=p.id_plataformas
and 
v.descripcion ='guerra' and v.valoracion >'7'or v.nombre like 'C%' and  v.valoracion >'8' and  v.nombre like 'D%'


select p.id_plataformas,p.nombre_plataformas ,p.codigo_videojuego from videojuegos v,plataformas p
where 
v.idP=p.id_plataformas
and 
v.idP ='1'
--registro entrada y empleados
select e.codigo_empleado ,e.fecha,e.nombre from  registro_entrada re,empleado e
where re.codigo=e.codigo_empleado 
and re.fecha
between '2023/08/01' and '2023/08/31'
and re.hora 
between '8:00' and '12:00'
or re.fecha
between '2023/10/06' and '2023/10/20'
and re.hora 
between '9:00' and '13:00'

select e.codigo_empleado ,e.fecha,e.nombre,e.hora from  registro_entrada re,empleado e
where re.codigo=e.codigo_empleado 
and re.codigo='2201'

