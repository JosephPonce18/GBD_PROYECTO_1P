---Un Cursor que muestre cuantas embarcaciones han arribado al muelle
--con pesca y el total de kilogramos de pesca que han arribado al muelle
do $$
declare 
	pesca record;
		cont int; acubarc int=0; acupesc int=0; cur_pesca cursor for select * from pesca;
begin
for cont in cur_pesca loop 
	acubarc=acubarc+count(cont.cod_pesca);
end loop;

for cont in cur_pesca loop 
	acupesc=acupesc+sum(cont.peso_pesca);
end loop;
open cur_pesca;
fetch cur_pesca into pesca;
raise notice 'han arribado un total de: % barcos con un total de:% kg de peso de pesca',
 acubarc, acupesc;
end $$
language 'plpgsql'