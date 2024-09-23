/*agrupando las ventas por empleados mostrando la cantidad total de ventas realizadas por
cada empleado*/

select empleado_id, count(*) as 'Total ventas'
from ventas group by empleado_id;

/*agrupando los productos por precio mostrando la cantidad de productos con el mismo
precio*/

select precio, count(*) as' Cantidad de productos'
from productos
group by precio;

/*agrupando los empleados por departamento mostrando la cantidad de empleados en cada
departamento*/

select departamento_id, count(*) as 'Cantidad de empleados'
from empleados group by departamento_id;