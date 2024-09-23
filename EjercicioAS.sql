/*Mostrando el slalario de los empleados junto con el salario aumentado en un 10%
nombrando a la columna como 'Aumento del 10%'*/

select salario, salario * 1.1 as'Aumento del 10%' from empleados;

/*Calculando el monto total de las compras realizadas por el cliente poniendo como nombre a 
columna 'monto total gastado'*/

select cliente_id,
sum(monto_total) as 'Monto total gastado'
from ventas group by cliente_id;

/*Mostrando los nombres completos de los empleados concatenando los campos' nombre' y 'apellido
poniendo como nombre a la columna: 'nombre y apellido'*/

select concat(nombre, ' ', apellido) as 'Nombre y apellido' from empleados;
