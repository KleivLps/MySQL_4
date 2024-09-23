/*contando cuantos empleados hay en total*/
select count(*) as 'Total empleados'
from empleados;

/*contando cuantas ventas se han realizado*/

select count(*) as 'Total Ventas'
from ventas;

/*contando cuantos productos tienen un precio superior a 500*/

select count(*) as 'Total productos con precio superior a 500'
from productos
where precio >500;
