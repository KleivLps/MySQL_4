/*Mostrando empleados con nombres que empiecen con L*/

Select nombre
from empleados
where nombre like 'L%';

/*buscando productos con el nombre telefono*/

select nombre
from productos
where nombre like '%Telefono%';

/*buscando los clientes con la palabra dentro de la direcion llamada 'calle'*/

select nombre, direccion
from clientes
where direccion like '%Calle%';