---Tablas Muchos a Muchos
-----1 
create table usuarios (
	id int ,
	nombre varchar(25) not null,
	apellido varchar (25)not null,
	fecha_nacimiento date ,
	constraint usuarios_pk primary key (id)
)
create table grupo(
	id int ,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key (id)
)
create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint usuarios_fk foreign key (us_id) references usuarios(id),
	constraint grupo_fk foreign key (gr_id) references grupo(id)
)
---RELACION MUCHOS A MUCHOS ENTRE USUARIOS Y GRUPO



insert into usuarios values (1,'Marilyn','Sagñay','05/11/2023'),
							(2,'Romel','Chamba','06/11/2023'),
							(3,'Mario','Guzñay','05/11/2023'),
							(4,'Johann','Domo','07/11/2023'),
							(5,'Monserrate','Vera','05/11/2023'),
							(6,'Lucio','Vargas','05/11/2023'),
							(7,'Martín','Arizaga','05/11/2023'),
							(8,'Fricson','Erazo','05/11/2023'),
							(9,'Jairo','Obando','05/11/2023'),
							(10,'Berni','Tomalá','05/11/2023');
							
							
insert into grupo values (1,'Maternal 1','Grupo de maternal matutino','08/03/2020'),
						 (2,'Maternal 2','Grupo de maternal vepertino','08/03/2020'),
						 (3,'Maternal 3','Grupo de maternal nocturno','08/03/2020'),
						 (4,'Incial 1 ','Grupo de inicial matutino','15/03/2021'),
						 (5,'Incial 2','Grupo de  inicial vespertino','15/03/2021'),
						 (6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021'),
						 (7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021'),
						 (8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022'),
						 (9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022'),
						 (10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022');


insert into usuario_grupo values (1,8),
								 (2,3),
								 (3,8),
								 (4,9),
								 (5,1),
								 (6,2),
								 (7,8),
								 (8,8),
								 (9,10),
								 (10,1);
select u.nombre,g.nombre from 	usuarios u, grupo g,usuario_grupo ug
where u.id=ug.us_id and g.id=ug.gr_id 
							 
								 
------2------------
create table habitaciones(
	habitacion_numero int ,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int ,
	constraint habitaciones_pk  primary key (habitacion_numero)
)
create table huespedes(
	id int ,
	nombres varchar (45) not null,
	apellidos varchar(45)not null,
	telefono char (10),
	coreo varchar(45),
	direccion varchar(45),
	cuidad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key (id)
)
create table reservas(
	inicio_fecha date  not null,
	fin_fecha date not null,
	habitaciones int  not null,
	huespet_id int not null,
	constraint habitaciones_fk foreign key (habitaciones) references  habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key (huespet_id) references  huespedes(id)
)
--RELACION MUCHOS A MUCHOS HABITACIONES Y HUESPEDES

 insert into habitaciones values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);
								 

insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');
												
								
insert into reservas values ('11/05/2023','12/05/2023',2,10),
						    ('11/05/2023','12/05/2023',2,9),
							('22/06/2023','23/06/2023',1,1),
							('22/06/2023','23/06/2023',1,2),
							('22/06/2023','23/06/2023',1,3),
							('22/06/2023','23/06/2023',1,4),
							('01/01/2023','02/01/2023',12,5),
							('11/08/2023','12/08/2023',11,6),
							('11/05/2023','12/05/2023',10,7),
							('11/05/2023','12/05/2023',9,8);
							
select he.nombres,he.apellidos from habitaciones h,huespedes he,reservas r
where  he.id in(select huespet_id from reservas where h.habitacion_numero=2 )

select h.habitacion_numero,count(r.huespet_id) from habitaciones h,reservas r
where h.habitacion_numero=r.habitaciones
group by h.habitacion_numero

select h.habitacion_numero,h.piso,he.nombres,he.apellidos from habitaciones h,huespedes he,reservas r
where  h.habitacion_numero=r.habitaciones and he.id=r.huespet_id and h.piso=4

select he.nombres,he.apellidos from habitaciones h,huespedes he,reservas r
where he.id in(select huespet_id from reservas where habitaciones=3 )

select h.habitacion_numero,avg(r.huespet_id) from habitaciones h,reservas r
where h.habitacion_numero=r.habitaciones
group by h.habitacion_numero

select h.habitacion_numero,he.nombres,he.apellidos from habitaciones h,huespedes he,reservas r
where h.habitacion_numero=r.habitaciones and he.id=r.huespet_id

select nombres,apellidos from huespedes he
where id in(select huespet_id from reservas where habitaciones=4 )

select h.habitacion_numero,sum(h.precio_por_noche) from habitaciones h,reservas r
group by h.habitacion_numero

-------------3
create table ciudad(
	id int ,
	nombre varchar (45)not null,
	constraint cuidad primary key (id)
)
create table  municipio (
	id int,
	nombre varchar (45),
	ciudad_id int,
	constraint municipio_pk primary key (id),
	constraint  municipio_fk foreign key (ciudad_id) references ciudad(id)
)
create table proyecto(
	id int ,
	proyecto varchar (50)not null,
	monto money not null,
	fecha_inicio date ,
	fehca_entrega date,
	constraint proyecto_pk primary key (id)
)
create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_fk foreign key (municipio_id) references municipio(id),
	constraint proyecto_fk foreign key (proyecto_id) references proyecto(id),
	constraint proyecto_municipio_pk primary key (municipio_id,proyecto_id)
)
--RELACION MUCHOS A MUCHOS MUNICIPIO Y PROYECTOS

insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');


insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);


insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');
							

insert into proyecto_municipio values (5,1),
									  (5,3),
									  (2,1),
									  (1,2),
									  (4,1),
									  (9,2),
									  (10,1),
									  (6,3),
									  (3,1),
									  (7,2);

select m.nombre,p.proyecto from municipio m,proyecto p,proyecto_municipio pm
where m.id=pm.municipio_id and p.id=pm.proyecto_id

select proyecto from proyecto 
where id in (select proyecto_id from proyecto_municipio where municipio_id=1 )

select m.nombre,count (pm.proyecto_id) from municipio m,proyecto_municipio pm
group by m.nombre

select m.nombre,p.proyecto from municipio m,proyecto p,proyecto_municipio pm
where m.id=pm.municipio_id and p.id=pm.proyecto_id and m.nombre  like '%GAD%'

select m.nombre,min(pm.proyecto_id) from municipio m,proyecto p,proyecto_municipio pm
where m.id=pm.municipio_id
group by m.nombre

select m.nombre,c.nombre from municipio m,ciudad c

