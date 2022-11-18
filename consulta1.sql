--Histórico de zarpes de pesca artesanal por bandera.
select 
	extract (year from zarpe.fecha) as fecha,
		zarpe.motivo as motivo_zarpe, barco.bandera as bandera,
		count (zarpe.motivo) as zarpe
from zarpe
	inner join barco on barco.cod_barco = zarpe.cod_barco
where zarpe.motivo ='pesca artesanal'
	group by
	extract (year from zarpe.fecha),
	zarpe.motivo, barco.bandera