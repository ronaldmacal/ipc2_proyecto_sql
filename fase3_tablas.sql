use proyectoerp;
--Modificar primero las tablas de fase 2
select * from Productos_registro;
alter table Productos_registro add  tipo varchar(5);

--Crear tablas de fase 3
create table Bodegas(
	idbodega varchar(10) not null primary key,
	nombre varchar(90),
	descripcion varchar(200),
	direccion varchar(150),
	id_erp varchar(8) not null,
	FOREIGN KEY (id_erp) REFERENCES Erp(nit_empresa)
);
select * from Bodegas;

create table Pasillos(
	idpasillo int identity(1,1)  primary key,
	numpasillo int,
	largo decimal(5,2),
	ancho decimal(5,2),
	idbodega varchar(10)  not null,
	FOREIGN KEY (idbodega) REFERENCES Bodegas(idbodega)
);
select * from Pasillos;

create table Estantes(
	 idestante int identity(1,1) primary key,
	 letra varchar(3),
	 largo decimal(5,2),
	 ancho decimal(5,2),
	 altura decimal(5,2),
	 idpasillo int,
	 FOREIGN KEY (idpasillo) REFERENCES Pasillos(idpasillo)
);
select * from Estantes;

create table Niveles(
	 idnivel int identity(1,1) primary key,
	 numnivel int,
	 largo decimal(5,2),
	 ancho decimal(5,2),
	 altura decimal(5,2),
	 idestante int,
	 FOREIGN KEY (idestante) REFERENCES Estantes(idestante)
);
select * from Niveles;

create table LotesySaldos(
	idtipo int identity(1,1) primary key,
	idproducto varchar(10),
	cantidad int,
	costopromedio decimal(5,2),
	tipo varchar(5), 
	FOREIGN KEY (idproducto) REFERENCES Productos_registro(codigo)
);

create table Ubicar(
	idubicacion int identity(1,1) primary key,
	idtipo int,
	idbodega varchar(10), 
	idnivel int,
	FOREIGN KEY (idnivel) REFERENCES Niveles(idnivel),
	FOREIGN KEY (idbodega) REFERENCES Bodegas(idbodega),
	FOREIGN KEY (idtipo) REFERENCES LotesySaldos(idtipo)
);
select * from Ubicar;

create table Compras(
	idcompra varchar(12) primary key,
	idproducto varchar(10),
	idubicacion int,
	idproveedor varchar(13),
	id_erp varchar(8) not null,
	FOREIGN KEY (idproveedor) REFERENCES Proveedor(nit_proveedor),
	FOREIGN KEY (idubicacion) REFERENCES Ubicar(idubicacion),
	FOREIGN KEY (idproducto) REFERENCES Productos_registro(codigo),
	FOREIGN KEY (id_erp) REFERENCES Erp(nit_empresa)
);
select * from Compras;


create table Ventas(
	idventa varchar(12) primary key,
	idcliente varchar(8),
	cantidad int,
	idproducto varchar(10),
	id_erp varchar(8) not null,
	total decimal(5,2),
	FOREIGN KEY (id_erp) REFERENCES Erp(nit_empresa),
	FOREIGN KEY (idcliente) REFERENCES Clientes(nit),
	FOREIGN KEY (idproducto) REFERENCES Productos_registro(codigo)

);
select * from Ventas;