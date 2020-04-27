use proyectoerp;
--Esta parte pertenece al llenado de datos del SQL
--Esto son los valores iniciales de 2 empresas registradas (ERP)
insert into Erp values ('88923412','Escan Produc','Servicios',10);
insert into Erp values ('77880000','Multiservicios Econ','Comercial',51);
select * from Erp;

--Insertar los contactos obligados de las dos empresas
insert into Contacto (nombre,celular,tel_oficina,extension_oficina,correo,direccion_oficina,tipo_contacto,id_erp,dpi)values('Luis Felipe','30991233','23440011',22,'lusfep@gmail.com','Calle Martí','Comercial','88923412','1234567890123');
insert into Contacto (nombre,celular,tel_oficina,extension_oficina,correo,direccion_oficina,tipo_contacto,id_erp,dpi)values('Carmen Santiago','99120344','22340011',01,'carmens@gmail.com','Calzada San Juan','Gerencial','88923412','8472993327123');
insert into Contacto (nombre,celular,tel_oficina,extension_oficina,correo,direccion_oficina,tipo_contacto,id_erp,dpi)values('Josué Martinez','51110022','24420102',22,'josue19m@gmail.com','Bulevard la Paz','Administrador','88923412','829901234124');
insert into Contacto (nombre,celular,tel_oficina,extension_oficina,correo,direccion_oficina,tipo_contacto,id_erp,dpi)values('Luis Andres','30991233','92440011',44,'luisandy11@gmail.com','Calle Martí','Comercial','77880000','2730020032144');
insert into Contacto (nombre,celular,tel_oficina,extension_oficina,correo,direccion_oficina,tipo_contacto,id_erp,dpi)values('Fatima Gutierrez','23120344','22340011',2,'fatimagui@gmail.com','Calzada San Juan','Gerencial','77880000','9483230012343');
insert into Contacto (nombre,celular,tel_oficina,extension_oficina,correo,direccion_oficina,tipo_contacto,id_erp,dpi)values('Josué Sum','51110022','44420102',08,'jjsum@gmail.com','Bulevard la Paz','Administrador','77880000','8475001123432');
select * from Contacto;

--Ingresar Métodos de pago
insert into Metodo_pago (numero_tarjeta,nombre_tarjeta,fecha_vencimiento,tipo_tarjeta,crv,id_erp,autoriza) values ('1234567891258966','Luis Felipe','2024-12-1','VISA',720,'88923412','Si');
insert into Metodo_pago (numero_tarjeta,nombre_tarjeta,fecha_vencimiento,tipo_tarjeta,crv,id_erp,autoriza) values ('4362156620014896','Josué Sum','2023-12-1','MASTER',132,'77880000','Si');
select * from Metodo_pago;


--Ingresar los módulos que se van a utilizar
insert into Modulos values (1,'Inventarios',0);
insert into Modulos values (2,'Ventas',0);
insert into Modulos values (3,'Compras',0);
insert into Modulos values (4,'Facturación y Pago',0);
insert into Modulos values (5,'Reclutamiento',0);
insert into Modulos values (6,'Clientes',1);
insert into Modulos values (7,'Proveedores',1);
insert into Modulos values (8,'Productos',1);
insert into Modulos values (9,'Dashboard',1);
insert into Modulos values (10,'Blog',1);
select * from Modulos;

--Ingresar precios
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Mensual',10,9);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Mensual',10,10);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Mensual',10,10);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Mensual',10,7);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Mensual',10,8);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Mensual',10,2);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Mensual',10,1.8);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Mensual',10,2);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Mensual',10,1);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Mensual',10,1);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Mensual',15,11);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Mensual',15,12);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Mensual',15,12);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Mensual',15,9);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Mensual',15,10);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Mensual',15,2.6);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Mensual',15,2.6);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Mensual',15,2.6);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Mensual',15,1);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Mensual',15,1);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Mensual',25,14);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Mensual',25,15);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Mensual',25,15);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Mensual',25,12);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Mensual',25,13);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Mensual',25,3.25);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Mensual',25,3.25);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Mensual',25,3.25);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Mensual',25,1);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Mensual',25,2);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Mensual',40,16);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Mensual',40,17);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Mensual',40,17);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Mensual',40,14);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Mensual',40,14);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Mensual',40,3.9);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Mensual',40,3.9);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Mensual',40,3.9);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Mensual',40,1);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Mensual',40,3);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Mensual',50,18);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Mensual',50,20);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Mensual',50,20);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Mensual',50,16);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Mensual',50,15);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Mensual',50,4.6);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Mensual',50,4.6);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Mensual',50,4.6);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Mensual',50,1);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Mensual',50,4);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Mensual',51,30);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Mensual',51,33);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Mensual',51,33);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Mensual',51,27);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Mensual',51,25);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Mensual',51,8.3);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Mensual',51,8.3);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Mensual',51,8.3);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Mensual',51,1);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Mensual',51,5);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Anual',10,100);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Anual',10,100);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Anual',10,100);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Anual',10,75);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Anual',10,90);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Anual',10,21.4);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Anual',10,21.4);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Anual',10,21.4);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Anual',10,9);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Anual',10,12);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Anual',15,125);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Anual',15,130);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Anual',15,130);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Anual',15,100);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Anual',15,115);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Anual',15,30);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Anual',15,30);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Anual',15,30);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Anual',15,9);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Anual',15,15);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Anual',25,150);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Anual',25,170);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Anual',25,170);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Anual',25,130);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Anual',25,130);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Anual',25,40);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Anual',25,40);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Anual',25,40);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Anual',25,12);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Anual',25,18);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Anual',40,185);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Anual',40,190);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Anual',40,190);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Anual',40,150);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Anual',40,130);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Anual',40,49);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Anual',40,49);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Anual',40,49);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Anual',40,13);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Anual',40,20);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Anual',50,210);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Anual',50,230);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Anual',50,230);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Anual',50,183);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Anual',50,135);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Anual',50,60);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Anual',50,60);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Anual',50,60);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Anual',50,15);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Anual',50,25);

insert into Precios (id_modulo,suscripcion,usuarios,costo)values(1,'Anual',51,340);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(2,'Anual',51,380);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(3,'Anual',51,380);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(4,'Anual',51,320);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(5,'Anual',51,140);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(6,'Anual',51,97);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(7,'Anual',51,97);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(8,'Anual',51,97);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(9,'Anual',51,20);
insert into Precios (id_modulo,suscripcion,usuarios,costo)values(10,'Anual',51,40);
select * from Precios;


--Ingresar la renta de modulos
insert into Renta_modulos (fecha_pago,fecha_vencimiento,id_pago,metodo_pago,costo_quetzales) values ('2019-12-22','2020-12-22',66,1,162.64);
insert into Renta_modulos (fecha_pago,fecha_vencimiento,id_pago,metodo_pago,costo_quetzales) values ('2019-12-22','2020-12-22',67,1,162.64);
insert into Renta_modulos (fecha_pago,fecha_vencimiento,id_pago,metodo_pago,costo_quetzales) values ('2020-04-01','2020-05-01',8,1,15.2);
insert into Renta_modulos (fecha_pago,fecha_vencimiento,id_pago,metodo_pago,costo_quetzales) values ('2020-04-02','2020-04-02',56,2,63.08);
insert into Renta_modulos (fecha_pago,fecha_vencimiento,id_pago,metodo_pago,costo_quetzales) values ('2020-04-02','2020-04-02',57,2,63.08);
select * from Renta_modulos;

--Ingresar usuarios administradores y trabajadores
insert into Administrador_colaborador values('2992837400123','adminescan','picontra',1,'Josué','Martinez','Gerente general de Escan','88923412');
insert into Administrador_colaborador values('2991001002143','josuesum','123sum',1,'Josué','Sum','Gerente servicios','77880000');
insert into Administrador_colaborador values('2911023141121','mmatt','789',0,'Matt','Godinez','Vendedor','88923412');
insert into Administrador_colaborador values('3030210027683','jorgep','99jorge',0,'Jorge','Perez','Vendedor','88923412');
insert into Administrador_colaborador values('3992001233321','pablo','hernandez23',0,'Pablo','Hernandez','Sub-gerente','77880000');
insert into Administrador_colaborador values('2900123124423','logitelma','contratel',0,'Telma','Arana','Logística','77880000');
select * from Administrador_colaborador;

--Asignar los modulos que pueden usar los administradores y trabajadores
insert into Asignar_modulos (id_colaborador,id_modulo) values ('2911023141121',6);
insert into Asignar_modulos (id_colaborador,id_modulo) values ('3030210027683',8);
insert into Asignar_modulos (id_colaborador,id_modulo) values ('2911023141121',7);
insert into Asignar_modulos (id_colaborador,id_modulo) values ('2911023141121',8);
insert into Asignar_modulos (id_colaborador,id_modulo) values ('3992001233321',6);
insert into Asignar_modulos (id_colaborador,id_modulo) values ('2900123124423',7);
insert into Asignar_modulos (id_colaborador,id_modulo) values ('2900123124423',6);
select * from Asignar_modulos;


--Ingresar proveedores
insert into Proveedor values('56223154','Productos Electronicos','Bulevard Vista Hermosa','30350044',2000,'Crisitian Alvarez','crselctro@gmail.com','88923412');
insert into Proveedor values('14568977','Distribuidora AS','Carretera al Salvador','30350789',3000,'Myra Estela','mjy123@gmail.com','88923412');
insert into Proveedor values('66012221','Importadora Alfa','Calle Martí','65001548',16300,'Marshall Eriksen','marshall19@gmail.com','77880000');
insert into Proveedor values('10001597','Importadora GM','Calzada Roosevelt','30381425',22000,'Paul Berñat','paul55@gmail.com','77880000');
insert into Proveedor values('77891000','Productos Internos Gamma','Calzada San Juan','30026668',11200,'Esteven Purita','juanpurita@gmail.com','77880000');
select * from Proveedor;

--Ingresar categoría
insert into Categoria values(1,'Oro','Clientes premium de alta categoría');
insert into Categoria values(2,'Plata','Clientes recurrentes.');
insert into Categoria values(3,'Bronce','Clientes que tienen algunas compras');
insert into Categoria values(4,'Normal','Clientes no recurrentes');
select * from Categoria;

--Ingresar clientes
insert into Clientes values('79889915','Jose Luis','Villa Nueva','24426600','Jose Luis','jl@gmail.com',3500,30,1,'88923412');
insert into Clientes values('46461300','Juan Gilfoyle','Villa Canales','24426100','Gilfoyle','juang10@gmail.com',600,30,2,'88923412');
insert into Clientes values('48561004','Ricardo Martinez','Villa Nueva','24421100','Ricardo','Ricall@gmail.com',200,90,4,'88923412');
insert into Clientes values('10549873','Jorge Perez','Villa Nueva','24424570','Jorge Perez','perezjj@hotmail.com',800,90,4,'88923412');
insert into Clientes values('98566601','Jose Jose','Villa Nueva','24429960','Jose Paredes','jjparedes@yahoo.com',800,30,4,'88923412');
insert into Clientes values('78990100','Matilda Perez','Villa Nueva','30246600','Matilda Perez','matp19@hotmail.com',900,30,2,'88923412');

insert into Clientes values('10054661','Jim JJ','Villa Nueva','84966600','Jim','jim69@gmail.com',900,30,4,'77880000');
insert into Clientes values('30215469','Emilio Trujillo','Villa Nueva','52006600','Emilio Trujillo','emill90@gmail.com',1000,30,3,'77880000');
insert into Clientes values('51643125','Peandro Paredes','Villa Nueva','23326600','Peandro Paredes','peanpp@hotmail.com',2000,30,2,'77880000');
insert into Clientes values('99780014','Dionora Lucas','Villa Nueva','78826600','Dionora Lucas','dionll@hotmail.com',2000,90,1,'77880000');
insert into Clientes values('98200141','Pablo Franco','Villa Nueva','10246600','Pablo Franco','papl19@gmail.com',800,30,1,'77880000');
insert into Clientes values('78451230','Jose Viggety','Villa Nueva','64886600','Jose Viggety','vuggelol@gmail.com',900,30,2,'77880000');
insert into Clientes values('99463101','Tommy Vercetti','Villa Nueva','66306600','Tommy Vercetti','vercetti@hotmail.com',1000,30,2,'77880000');
insert into Clientes values('78899000','Andres Cuttinni','Villa Nueva','51226600','Andres Cuttinni','andresalfa@gmail.com',1000,30,3,'77880000');
insert into Clientes values('40036125','Sergio Alfredo','Villa Nueva','66316600','Sergio Alfredo','sergio_dsa@gmail.com',600,30,4,'77880000');
insert into Clientes values('40897431','Luis Rey','Villa Nueva','12446600','Luis Rey','reyes8@gmail.com',700,30,4,'77880000');
select * from Clientes;

--Ingresar productos
insert into Productos_registro values('1258800912','5689478801233','Prestamo','Prestamo economico','Prestamo básico basado en intereses bajos','PBI','Prestamos','PST','88923412');
insert into Productos_registro values('6058948772','1000200056311','Inversiones','Inversion modo ahorro en plazos','Inversion básica','IB','Prestamos','PST','88923412');
insert into Productos_registro values('1234567899','1234567891256','Servicio de limpieza','Limpieza profunda pre-mantenimiento','Servicio Manual','SM','Mantenimiento preventivo','MTP','77880000');
insert into Productos_registro values('5611200589','5561024879121','Mantenimiento de maquinaria','Mantenimiento para maquinaria semi-industrial','Servicio Manual','SM','Mantenimiento','MTM','77880000');
select * from Productos_registro;


insert into Suscripciones (nit_erp,precio_suscrito) values('88923412',66);
insert into Suscripciones (nit_erp,precio_suscrito) values('88923412',67);
insert into Suscripciones (nit_erp,precio_suscrito) values('88923412',8);
insert into Suscripciones (nit_erp,precio_suscrito) values('77880000',56);
insert into Suscripciones (nit_erp,precio_suscrito) values('77880000',57);
	
select * from Asignar_modulos;