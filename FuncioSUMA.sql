/*calculando la suma total de salarios de todos los empleados*/

select sum(salario) as' Suma total de salarios'
from empleados;

/*calculando la suma total de montos vendidos en todas las ventas*/

select sum(monto_total) as'Suma total de montos vendidos'
from ventas;

/*calculando la suma de precios de productos con IDpar*/

select sum(precio) as 'Suma de precios de productos con ID par'
from productos
where id % 2=0;