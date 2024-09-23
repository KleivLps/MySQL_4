/*salario minimo de todos los empleados*/

select max(salario) as 'salario maximo'
from empleados;

/*encontrando la cantidad maxima de productos vendidos en una sola venta*/

select max(cantidad) as 'cantidad maxima vendida'
from ventas;

/*buscando la edad maxima de los empleados*/

select max(edad) as 'Edad maxima'
from empleados;