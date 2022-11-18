---Ingreso de registros a la tabla 'grua'
insert into grua values ('gr01','50t');
insert into grua values ('gr02','5t');
insert into grua values ('gr03','10t');
insert into grua values ('gr04','35t');
insert into grua values ('gr05','60t');
insert into grua values ('gr06','45t');
insert into grua values ('gr07','40t');

---Ingreso de registros a la tabla 'almacen'--
insert into almacen values ('alm01','1000');
insert into almacen values ('alm02','2000');
insert into almacen values ('alm03','3000');
insert into almacen values ('alm04','4000');
insert into almacen values ('alm05','5000');
---Ingreso de registros a la tabla 'permiso'
insert into permiso values ('p01','artesanal','pesca tradicional');
insert into permiso values ('p02','industrial','pesca de origen industrial');
insert into permiso values ('p03','comercial','pesca con fines comerciales');
insert into permiso values ('p04','ornamental','pesca ornamental');
insert into permiso values ('p05','salida','regreso a su pais');
---Ingreso de registros a la tabla 'barco'--
insert into barco values ('bar01','p02','50','koreana');
insert into barco values ('bar02','p01','12','ecuatoriana');
insert into barco values ('bar03','p02','100','chilena');
insert into barco values ('bar04','p03','25','india');
insert into barco values ('bar05','p01','15','ecuatoriana');
insert into barco values ('bar06','p03','30','ecuatoriana');
insert into barco values ('bar07','p02','110','indonesa');
insert into barco values ('bar08','p02','300','china');
insert into barco values ('bar09','p03','45','china');
insert into barco values ('bar10','p01','40','ecuatoriana');
insert into barco values ('bar11','p02','350','indonesa');
insert into barco values ('bar12','p03','60','china');
insert into barco values ('bar13','p01','13','ecuatoriana');
insert into barco values ('bar14','p01','10','ecuatoriana');
insert into barco values ('bar15','p02','100','china');
---Ingreso de registros a la tabla 'pesca'--
insert into pesca values ('pesc01','bar01','alm01','pesca artesanal','800');
insert into pesca values ('pesc02','bar02','alm03','pesca industrial','2500');
insert into pesca values ('pesc03','bar03','alm04','pesca industrial','3000');
insert into pesca values ('pesc04','bar04','alm02','pesca artesanal','100');
insert into pesca values ('pesc05','bar05','alm05','pesca comercial','4800');
insert into pesca values ('pesc06','bar06','alm01','pesca ornamental','350');
insert into pesca values ('pesc07','bar07','alm03','pesca industrial','3000');
insert into pesca values ('pesc09','bar01','alm02','pesca artesanal','250');
insert into pesca values ('pesc10','bar01','alm02','pesca ornamental','500');
insert into pesca values ('pesc11','bar02','alm03','pesca industrial','600');
insert into pesca values ('pesc12','bar02','alm03','pesca ornamental','900');
---Ingreso de registros a la tabla 'arribo'--
insert into arribo values ('arr01','bar01','gr03','1999-10-01','pescar artesanal');
insert into arribo values ('arr02','bar02','gr02','1999-10-01','pesca industrial');
insert into arribo values ('arr03','bar03','gr04','1999-10-02','pesca industrial');
insert into arribo values ('arr04','bar04','gr03','1999-10-30','pesca artesanal');
insert into arribo values ('arr05','bar05','gr02','2000-01-16','pesca comercial');
insert into arribo values ('arr06','bar06','gr03','2000-03-09','pesca ornamental');
insert into arribo values ('arr07','bar07','gr04','2000-03-20','pesca industrial');
insert into arribo values ('arr08','bar05','gr04','2000-04-12','pesca industrial');
insert into arribo values ('arr09','bar05','gr04','2000-05-02','pesca industrial');
insert into arribo values ('arr10','bar01','gr03','2000-06-03','pesca artesanal');
insert into arribo values ('arr11','bar01','gr03','1999-06-03','pesca artesanal');
---Ingreso de registros a la tabla 'permisos_receptados'--
insert into permisos_receptados values ('pre01','arr01','p01','1999-10-01');
insert into permisos_receptados values ('pre02','arr02','p05','1999-10-01');
insert into permisos_receptados values ('pre03','arr03','p03','1999-10-02');
insert into permisos_receptados values ('pre04','arr04','p04','1999-10-30');
insert into permisos_receptados values ('pre05','arr05','p05','2000-01-16');
insert into permisos_receptados values ('pre06','arr06','p05','2000-03-09');
insert into permisos_receptados values ('pre07','arr07','p03','2000-03-20');
---Ingreso de registros a la tabla 'permisos_emitido'--
insert into permisos_emitidos values ('pem01','p02','2001-04-01');
insert into permisos_emitidos values ('pem02','p04','2001-04-06');
insert into permisos_emitidos values ('pem03','p05','2001-06-09');
insert into permisos_emitidos values ('pem04','p01','2002-06-11');
insert into permisos_emitidos values ('pem05','p03','2002-08-19');
insert into permisos_emitidos values ('pem06','p02','2002-08-22');
insert into permisos_emitidos values ('pem07','p01','2002-09-06');
insert into permisos_emitidos values ('pem08','p01','2002-09-15');
---Ingreso de registros a la tabla 'zarpe'--
insert into zarpe values ('zar01','bar08','2001-04-01','pescar industrial');
insert into zarpe values ('zar02','bar09','2001-04-06','pesca ornamental');
insert into zarpe values ('zar03','bar10','2001-06-09','regreso a su pais');
insert into zarpe values ('zar05','bar11','2002-06-11','regreso a su pais');
insert into zarpe values ('zar06','bar12','2002-08-19','pesca ornamental');
insert into zarpe values ('zar07','bar13','2002-08-22','pesca industrial');
insert into zarpe values ('zar04','bar14','2002-09-06','pesca artesanal');
insert into zarpe values ('zar08','bar15','2002-09-15','pesca artesanal');
insert into zarpe values ('zar09','bar15','2002-09-20','pesca artesanal');
insert into zarpe values ('zar10','bar15','2002-10-05','pesca artesanal');
insert into zarpe values ('zar11','bar08','2002-10-20','pesca ornamental');
---Ingreso de registros a la tabla 'empleado_mantenimiento'--
insert into empleado_mantenimiento values ('emp01','simon perez','1314786320','biologo marino','1999-09-29');
insert into empleado_mantenimiento values ('emp02','roberto loor','1369852017','mecanico motriz','1999-09-30');
insert into empleado_mantenimiento values ('emp03','esteban rodriguez','13479658236','ingeniero naval','1999-10-01');
insert into empleado_mantenimiento values ('emp04','juan martinez','13159630048','mecanico','2000-01-12');
insert into empleado_mantenimiento values ('emp05','rafael solis','1369320233','ingeniero industrial','2000-01-22');
---Ingreso de registros a la tabla 'instrumento_mantenimiento'--
insert into instrumento_mantenimiento values ('inst01','martillo','martillo');
insert into instrumento_mantenimiento values ('inst02','alicates','alicates de diferentes tamaños');
insert into instrumento_mantenimiento values ('inst03','destornilladores','juego de destornilladores de diferente cabezas');
insert into instrumento_mantenimiento values ('inst04','soldadora','soldadora manual');
insert into instrumento_mantenimiento values ('inst05','llaves','juego de llaves');
---Ingreso de registros a la tabla 'mantenimiento'--
insert into mantenimiento values ('mant01','emp01','bar02','inst01','perforacion simple','1999-10-02');
insert into mantenimiento values ('mant02','emp05','bar04','inst02','arreglo de irregularidad','1999-10-05');
insert into mantenimiento values ('mant03','emp04','bar06','inst04','arreglo de fuga','1999-10-06');
insert into mantenimiento values ('mant04','emp01','bar02','inst05','cambio de tuerca','2000-01-20');
insert into mantenimiento values ('mant05','emp02','bar01','inst03','colocacion de lamina','2000-03-20');
insert into mantenimiento values ('mant06','emp05','bar03','inst02','corte de irregularidad','2002-03-25');

