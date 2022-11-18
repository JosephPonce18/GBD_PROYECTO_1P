alter table pesca
	add constraint FK_pesca_codbarco foreign key (cod_barco)
	references barco (cod_barco)
	on delete restrict on update restrict;
alter table pesca
	add constraint FK_pesca_codigocontenedor foreign key (cod_almacen)
	references almacen (cod_almacen)
	on delete restrict on update restrict;
alter table permisos_emitidos
	add constraint FK_recepcion_codpermiso foreign key (cod_permiso)
	references permiso (cod_permiso)
	on delete restrict on update restrict;
alter table zarpe
	add constraint FK_zarpe_codbarco foreign key (cod_barco)
	references barco (cod_barco)
	on delete restrict on update restrict;
alter table barco
	add constraint FK_permiso_codpermiso foreign key (cod_permiso)
	references permiso (cod_permiso)
	on delete restrict on update restrict;
alter table arribo
	add constraint FK_arribo_grua foreign key (cod_grua)
	references grua (cod_grua)
	on delete restrict on update restrict;
alter table arribo
	add constraint FK_arribo_barco foreign key (cod_barco)
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
alter table mantenimiento
	add constraint FK_mantenimiento_codempmantenimiento foreign key (cod_empleado)
	references empleado_mantenimiento (cod_empleado)
	on delete restrict on update restrict;	
alter table mantenimiento
	add constraint FK_mantenimiento_codbarco foreign key (cod_barco)
	references barco (cod_barco)
	on delete restrict on update restrict;
alter table mantenimiento
	add constraint FK_mantenimiento_codiinstrumento foreign key (cod_instrumento)
	references instrumento_mantenimiento (cod_instrumento)
	on delete restrict on update restrict;	
	