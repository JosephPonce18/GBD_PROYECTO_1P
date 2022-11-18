--Un trigger que valide que no se pueda ingresar una pesca a un almacén una cantidad mayor a su capacidad. 
create or replace function capacidadalmacen2() returns trigger
	as 
		$capacidadalmacen2$
	declare
	capacidadalm int; pespeso int;
begin
select 
peso_pesca into pespeso
from pesca
where pesca.peso_pesca = new.peso_pesca;
select 
capacidad into capacidadalm
from almacen;
		if (pespeso > capacidadalm) then
			raise exception 'sobrepasa la capacidad del almacen';
		end if;
	return new;
end;
$capacidadalmacen2$
language plpgsql;
create trigger capacidadalmacen2 after
insert on pesca for each row
execute procedure capacidadalmacen2(); 
insert into pesca values ('pesc08','bar01','alm01','pescar artesanal','600');

select count (cod_barco) from arribo