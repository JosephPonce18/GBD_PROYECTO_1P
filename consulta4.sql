--Histórico de la atención de cada grúa por año
create or replace view atencion_view1 (fecha_atencion, total_atencion)
as select 
		extract (year from arribo.fecha) as fecha_atencion,
		count (grua.cod_grua) as total_atencion
from arribo
		inner join grua on grua.cod_grua = arribo.cod_grua
group by
  extract (year from arribo.fecha)
	order by extract (year from arribo.fecha) ;
select * from atencion_view1;