use proyectoerp;

create table Productos_registro(
	codigo varchar(10) not null primary key,
	codigo_barras varchar(13) not null,
	nombre varchar(70),
	descripcion varchar(255),
	descripcion_presentacion varchar(100),
	abreviatura_presentacion varchar(5),
	descripcion_clasificacion varchar(100),
	abreviatura_clasificacion varchar(6)
);



create table Proveedor(
	nit_proveedor varchar(13) not null primary key,
	nombre varchar(70) not null,
	direccion varchar(200),
	telefono int,
	limite_credito int,
	contacto_proveedor varchar(70) not null,
	correo_contacto varchar(100) not null
);

create table Administrador_general(
	dpi varchar(13) not null primary key,
	nombre varchar(100) not null,
	apellido varchar(100),
	usuario varchar(50) not null,
	contrasena varchar(50) not null
);

create table Categoria(
	id_categoria int not null primary key,
	abreviatura varchar(10),
	descripcion varchar(200)
);

create table Clientes(
	nit varchar(8) not null primary key,
	nombre varchar(100) not null,
	direccion varchar(200),
	telefono int,
	contacto_cliente varchar(70),
	correo_contacto varchar(100),
	limite_credito int,
	dias_credito int,
	id_categoria int,
	FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

create table Erp(
	nit_empresa varchar(8) not null primary key,
	nombre_empresa varchar(150) not null,
	tipo_empresa varchar(20) not null,
	tamano_empresa int not null
);

create table Administrador_colaborador(
	dpi varchar(13) not null primary key,
	usuario varchar(100) not null,
	contrasena varchar(100) not null,
	administrador tinyint not null,
	nombre varchar(100),
	apellido varchar(100),
	puesto varchar(60),
	id_erp varchar(8) not null,
	FOREIGN KEY (id_erp) REFERENCES Erp(nit_empresa)
);

create table Modulos(
	id_modulo int primary key,
	tipo_modulo int,
	modulo_default tinyint,
);

create table Metodo_pago(
	id_metodopago int not null identity(1,1) primary key,
	numero_tarjeta int not null,
	nombre_tarjeta varchar(60) not null,
	fecha_vencimiento date not null,
	tipo_tarjeta varchar(45) not null,
	crv int not null,
	id_erp varchar(8) not null,
	FOREIGN KEY (id_erp) REFERENCES Erp(nit_empresa)
);

create table Asignar_modulos(
	id_acceso int not null identity(1,1) primary key,
	id_colaborador varchar(13) not null,
	id_modulo int not null,
	FOREIGN KEY (id_colaborador) REFERENCES Administrador_colaborador(dpi),
	FOREIGN KEY (id_modulo) REFERENCES Modulos(id_modulo)
);

create table Contacto(
	id_contacto int not null identity(1,1) primary key,
	nombre varchar(100) not null,
	celular varchar(10),
	tel_oficina varchar(10),
	extension_oficina tinyint,
	correo varchar(200),
	direccion_oficina varchar(300),
	tipo_contacto varchar(50),
	id_erp varchar(8) not null,
	FOREIGN KEY (id_erp) REFERENCES Erp(nit_empresa)
);

create table Precios(
	id_precio int not null identity(1,1) primary key,
	id_modulo int,
	suscripcion varchar(10),
	usuarios int,
	costo decimal(5,2) not null,
	FOREIGN KEY (id_modulo) REFERENCES Modulos(id_modulo),
);


create table Renta_modulos(
	id_renta int not null identity(1,1) primary key,
	fecha_pago date,
	fecha_vencimiento date,
	id_pago int,
	metodo_pago int,
	costo_quetzales decimal(5,2),
	FOREIGN KEY (id_pago) REFERENCES Precios(id_precio),
	FOREIGN KEY (metodo_pago) REFERENCES Metodo_pago(id_metodopago)
);

create table Suscripciones(
	idsuscripcion int identity(1,1) primary key,
	nit_erp varchar(8) not null,
	precio_suscrito int,
	FOREIGN KEY (nit_erp) REFERENCES Erp(nit_empresa),
	FOREIGN KEY (precio_suscrito) REFERENCES Precios(id_precio)
);


--Ingreso de algunos datos para pruebas y funciones básicas
insert into dbo.Administrador_general values('2992193560101','Ronald Oswaldo','Macal de Leon','admin1','123');
insert into Administrador_general values('9887545660100','Roy Estuardo','Mendez Perez','persona1','contraseña01');
insert into Administrador_general values('2992193561233','Rudy Alba','Reyes Gonzales','rudy23','pap');

select * from Modulos;
alter table Modulos alter column tipo_modulo varchar(20);

select *  from Renta_modulos;
select * from Categoria;
alter table Clientes add id_erp varchar(8) not null foreign key(id_erp) references Erp(nit_empresa);

alter table Proveedor add id_erp varchar(8) not null foreign key(id_erp) references Erp(nit_empresa);
select * from Costo_por_suscripcion;


select dpi,nombre from Administrador_general;
