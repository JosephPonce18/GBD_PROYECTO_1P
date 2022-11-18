--Histórico de atraques por bandera.
select
	extract (year from arribo.fecha) as fecha,
		barco.bandera as bandera, arribo.cod_barco as cod_barco,
		count (barco.cod_barco) as arribo
from arribo
	inner join barco on barco.cod_barco = arribo.cod_barco
	group by
	extract (year from arribo.fecha),
	arribo.cod_barco, barco.bandera