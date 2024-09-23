/*buscando el salario minimo de todos los empleados*/

select min(salario) as 'Salario minimo'
from empleados;

/*buscando la cantidad minima de productos vendidos en una sola venta*/

select min(cantidad) as 'Cantidad minima vendida'
from ventas;

/*buscando la edad minima de los empleados*/

select min(edad) as' Edad minima'
from empleados;
