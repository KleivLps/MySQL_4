/*buscando los departamentos con un salario promedio de sus empleados
superior a 3000*/

select departamento_id, avg(salario) as 'Salario Promedio'
from empleados group by departamento_id
having avg(salario) >3000;

/*Buscando los productos que se han vendido al menos 5 veces*/

select producto_id, count(*) as 'Cantidad de ventas'
from ventas group by producto_id
having count(*) >= 5;

/*Seleccionando los empleados que tengan una'o' en su nombre o apellido, agrupandolos por 
departamento mostrando los que tengan el salario maximo*/

select departamento_id, nombre, apellido, max(salario) as 'Salario maximo'
from empleados where nombre like '%o%' or apellido like '%o%'
group by departamento_id, nombre, apellido;
