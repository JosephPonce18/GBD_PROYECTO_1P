--Histórico de número de tripulantes controlados por el muelle pesquero por año
create or replace view prueba_view (fecha, total)
as select 
		extract (year from arribo.fecha) as fecha,
		sum (barco.num_tripulantes) as total_tripulantes
from arribo
		inner join barco on barco.cod_barco = arribo.cod_barco
group by
		extract (year from arribo.fecha)
		order by extract (year from arribo.fecha) ;
select * from prueba_view;