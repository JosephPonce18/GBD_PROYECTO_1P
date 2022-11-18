--tabla barco
create table barco(
cod_barco varchar not null,
cod_permiso varchar not null,
num_tripulantes numeric not null,
bandera varchar not null,
constraint PK_cod_barco primary key (cod_barco)
);
--tabla empleado_mantenimiento
create table empleado_mantenimiento(
cod_empleado varchar not null,
nombre text not null,
cedula varchar not null,
titulo varchar not null,
fecha_ingreso date not null,
constraint PK_cod_empleado primary key (cod_empleado)
);
--tabla arribo
create table arribo(
cod_arribo varchar not null,
cod_barco varchar not null,
cod_grua varchar not null,
fecha date not null,
motivo varchar not null,
constraint PK_cod_arribo primary key (cod_arribo)
);
---tabla grua
create table grua(
cod_grua varchar not null,
capacidad_kg varchar not null,
constraint PK_cod_grua primary key (cod_grua)
);

--tabla mantenimiento
create table mantenimiento(
cod_mantenimiento varchar not null,
cod_empleado varchar not null,
cod_barco varchar not null,
cod_instrumento varchar not null,
tipo_mantenimiento varchar not null,
fecha_mantenimiento date not null,
constraint PK_cod_mantenimiento primary key (cod_mantenimiento)
);
--tabla instrumento_mantenimiento
create table instrumento_mantenimiento(
cod_instrumento varchar not null,
nombre varchar not null,
descripcion varchar not null,
constraint PK_cod_instrumento primary key (cod_instrumento)
);
--tabla permisos_receptados
create table permisos_receptados(
cod_recepcion varchar not null,
cod_arribo varchar not null,
cod_permiso varchar not null,
fecha_recepcion date not null,
constraint PK_cod_recepcion primary key (cod_recepcion)
);
--tabla permiso
create table permiso(
cod_permiso varchar not null,
tipo_permiso text not null,
motivo text not null,
constraint PK_cod_permiso primary key (cod_permiso)
);
--tabla permisos_emitidos
create table permisos_emitidos(
cod_emision varchar not null,
cod_permiso varchar not null,
fecha_emision date not null,
constraint PK_cod_emision primary key (cod_emision)
);
--tabla pesca
create table pesca(
cod_pesca varchar not null,
cod_barco varchar not null,
cod_almacen varchar not null,
tipo_pesca text not null,
peso_pesca numeric not null,
constraint PK_cod_pesca primary key (cod_pesca)
);
--tabla almacen
create table almacen(
cod_almacen varchar not null,
capacidad varchar not null,
constraint PK_cod_almacen primary key (cod_almacen)
);
--tabla zarpe
create table zarpe(
cod_zarpe varchar not null,
cod_barco varchar not null,
fecha date not null,
motivo varchar not null,
constraint PK_cod_zarpe primary key (cod_zarpe)
);

alter table arribo
	add constraint FK_arribo_grua foreign key (cod_grua)
	references grua (cod_grua)
	on delete restrict on update restrict;

alter table arribo
	add constraint FK_arribo_codbarco foreign key (cod_barco)
	references barco (cod_barco)
	on delete restrict on update restrict;
alter table permisos_receptados
	add constraint FK_recepcion_codarribo foreign key (cod_arribo)
	references arribo (cod_arribo)
	on delete restrict on update restrict;
alter table permisos_receptados
	add constraint FK_recepcion_codpermisos foreign key (cod_permiso)
	references permiso (cod_permiso)
	on delete restrict on update restrict;	
alter table permisos_emitidos
	add constraint FK_recepcion_codpermiso foreign key (cod_permiso)
	references permiso (cod_permiso)
	on delete restrict on update restrict;
alter table almacen
	add constraint FK_almacen_codpesca foreign key (cod_pesca)
	references pesca (cod_pesca)
	on delete restrict on update restrict;
alter table zarpe
	add constraint FK_zarpe_codbarco foreign key (cod_barco)
	references barco (cod_barco)
	on delete restrict on update restrict;
alter table barco
	add constraint FK_permiso_codpermiso foreign key (cod_permiso)
	references permiso (cod_permiso)
	on delete restrict on update restrict;
alter table mantenimiento
	add constraint FK_mantenimiento_codiinstrumento foreign key (cod_instrumento)
	references instrumento_mantenimiento (cod_instrumento)
	on delete restrict on update restrict;	
alter table mantenimiento
	add constraint FK_mantenimiento_codempmantenimiento foreign key (cod_empleado)
	references empleado_mantenimiento (cod_empleado)
	on delete restrict on update restrict;
alter table mantenimiento
	add constraint FK_mantenimiento_codbarco foreign key (cod_barco)
	references barco (cod_barco)
	on delete restrict on update restrict;
alter table pesca
	add constraint FK_pesca_codbarco foreign key (cod_barco)
	references barco (cod_barco)
	on delete restrict on update restrict;
alter table pesca
	add constraint FK_pesca_codigocontenedor foreign key (cod_almacen)
	references almacen (cod_almacen)
	on delete restrict on update restrict;








