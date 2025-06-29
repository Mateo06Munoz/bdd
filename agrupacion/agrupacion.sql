--relacion cuentas con usuario
--agregacion 1
select AVG (cast(saldo as numeric))from cuentas
where cedula_usiario='02030'
--agregacion 2
select u.tipo_cuneta,count (numero_cuenta) from cuentas c,usuario u
where c.cedula_usiario=u.cedula
group by u.tipo_cuneta 
--relacion cliente con compras
-- agregacion 1
select *from compras
select co.cedula,sum(co.monto) from clientes c,compras co
where  co.cedula='1727357720'
group by co.cedula
--agrupacion 2
select count (c.idCompras)from clientes c,compras co
where c.idCompras=co.id_compra
and co.fechat_compra ='25/6/2000'
--relacion estudiantes con jovenes 
--agrupacion 1
select e.codigo, count (e.codigo) from estudiantes e,profesores p
group by e.codigo
--agrupacion 2
select  ROUND(AVG(EXTRACT(year from CURRENT_DATE) - EXTRACT(year from fecha_nacimiento))) as edad_promedio 
from estudiantes;
--relacion persona com prestamo
--agrupacion 1
select sum(cast(pe.nonto as numeric)) from personas p,prestamo pe
group by p.cedula
--agrupacion 2
select count (1) from personas p,prestamo pe
where p.numero_hijos >1
--relacion productos y ventas 
-- agregacion 1
select max(p.precio) from productos p,ventas v
--agregacion 2
select sum(v.id_ventas)from productos p,ventas v
--relacion transaciones bancos 
--agruopacion 1
select count (t.codigoB)from transacciones t,banco b
where t.codigoB =b .codigo_banco
and t.tipo='C'
--agregacion 2
select t.numero_cuenta,round (avg(cast(t.monto as decimal)),2)as monto_promedio from transacciones t,banco b
group by t.numero_cuenta
--relacion videojuegos con plataformas
--agrupacion 1
select count (1)from videojuegos v,plataformas p
where v.idP=p.id_plataformas
group by p.nombre_plataformas
--agrupacion 2
select round(avg(3567),2)as valoracion_promedio from  videojuegos v,plataformas p
--relacion registro_entrada  con empleado 
--agrupacion 1
select count(1)from registro_entrada re,empleado e
where re.codigo=e.codigo_empleado
group by e.codigo_empleado
--agrupacion 2
select min(re.fecha),max(re.fecha) from registro_entrada re,empleado e
