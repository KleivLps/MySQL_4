/*CLAUSULA IN*/

/*Buscando empleados que trabajan en los departamentos 2 o 3*/

select * from empleados where departamento_id in(2, 3);

/*Clientes que no tengan los IDs 2, 4 o 6*/

select * from clientes where nombre not in (2, 4, 6);

/*Buscando los productos cuyos precios son 350.00, 480.00 o 800.00*/

select * from productos where precio in (350.00, 480.00, 800.00);

/*CLAUSULA LIKE*/

/*Buscando los empleados cuyos correos electronicos terminan en 'mail.com'*/

select * from empleados where correo_electronico like '%mail.com';

/*Encontrando los productos cuyos nombres tengan exactamente 6 caracteres*/

select * from productos where nombre like '------';

/*Buscando los clientes cuyos nombres tengan una 'a' en la tercera posicion*/

select * from clientes where nombre like '__a%';

/*CLAUSULA ORDER_BY*/

/*Clientes por nombre de manera ascendente y luego por direccion de manera descendiente*/

select * from clientes order by nombre asc, direccion desc;

/*Ordena los empleados por fecha de contratacion de manera descendiente*/

select * from empleados order by fecha_contratacion desc;

/*Ordenando los productos por precio de manera ascendente*/

select * from productos order by precio asc;

/*FUNCION MAX*/

/*Encontrando el precio maximo de un producto*/

select max(precio) as precio_maximo from productos;

/*Encontrando el monto total maximo de una venta*/

select max(monto_total) as monto_maximo from ventas;

/*Encontrando el ID del cliente con el valor maximo*/

select max(id) as cliente_id_maximo from clientes;

/*FUNCION MIN()*/

/*Encontrando el precio minimo de un producto*/

select min(precio) as precio_minimo from productos;

/*Encontrando el monto total minimo de una venta*/

select min(monto_total) as monto_minimo from ventas;

/*Encontrando el ID de cliente con el valor minimo*/

select min(id) as cliente_in_minimo from clientes;

/*FUNCION COUNT()*/

/*Contando cuantos clientes tienen la palabra'Lopez' en su nombre*/

select count(*) as cliente_lopez from clientes where nombre like '%Lopez%';

/*Contando cuantas ventas fueron realizadas por el empleado con el ID 9*/

select count(*) as ventas_empleado_9 from ventas where empleado_id = 9;

/*Cuenta cuantos productos tienen un nombre que contiene la palabra 'Digital'*/

select count(*) as productos_digital from productos where nombre like '%Digital%';

/*FUNCION SUM()*/

/*Calculando la suma de cantidades de produtos vendidos por empleado*/

select empleado_id, sum(cantidad) as cantidad_total from ventas group by empleado_id;

/*Calculando la suma de salarios de empleados en el Departamento 1*/

select sum(salario) as suma_salarios from empleados where departamento_id =1;

/*Calculando la suma de precios de productos vendidos al cliente con ID 2*/

select sum(precio_unitario) as suma_precios from ventas where cliente_id = 2;

/*FUNCION AVG()*/

/*Calculando el precio promedio de productos con un precio superior a S/200*/

select avg(precio) as precio_promedio from productos where precio > 200;

/*Calculando el salario promedio de los empleados en el Departamento 1*/

select avg(salario) as salario_promedio from empleados where departamento_id = 1;

/*Calculando la cantidad promedio de productos vendidos por empleado*/

select empleado_id, avg(cantidad) as cantidad_promedio from ventas group by empleado_id;

/*FUNCION GROUP BY()*/

/*Agrupando las ventas por clientes y muestra el monto total gastado por cada cliente*/

select cliente_id, sum(monto_total) as monto_total_gastado from ventas group by cliente_id;

/*Encontrando el salario maximo por departamento*/

select departamento_id, max(salario) as salario_maximo from empleados group by departamento_id;

/*Encontrando el salario minimo por departamento*/

select departamento_id, min(salario) as salario_minimo from empleados group by departamento_id;

/*Obteniendo la suma total de salarios por departamento*/

select departamento_id, sum(salario) as suma_salarios from empleados group by departamento_id;

/*Encontrando la cantidad total de productos vendidos por empleado*/

select empleado_id, sum(cantidad) as total_productos_vendidos from ventas group by empleado_id;

/*FUNCION HAVING()*/

/*Encontrando los departamentos con al menos 2 empleados con una edad menor de 30 años*/

select departamento_id, count(*) as empleados_menor_30
from empleados
where edad < 30
group by departamento_id
having count(*) >= 2;

/*Mostrando los clientes que han gastado mas de 2000 en total en compras*/

select cliente_id, sum(monto_total)as total_gastado
from ventas
group by cliente_id
having sum(monto_total) >2000;

/*FUNCION AS()*/

/*Creando una consulta que muestre la edad de los empleados junto con la edad
aumentada en 5 años (columna: 'edad en 5 años')*/

select nombre, edad, (edad + 5) as 'edad en 5 años' from empleados;

/*Mostrando el monto total de ventas junto con el monto total aumentando en un 21%(columna: 'Precio + iva')*/

select monto_total, (monto_total * 1.21) as 'Precio + IVA' from ventas;

/*Creando una consulta que muestre el nombre del producto y su precio unitario
precedido con el signo '$' (columna: 'precio con formato')*/

select nombre, concat('$ ', precio) as'precio con formato' from productos;

/*FUNCION LIMIT()*/

/*Mostrando los 5 clientes con los IDS mas bajos*/

select * from clientes order by id asc limit 5;

/*Mostrando los 3 productos mas vendidos*/

select producto_id, sum(cantidad) as cantidad_total from ventas group by producto_id
order by cantidad_total desc limit 3;

/*Mostrando los 5 empleados mas jovenes*/

select * from empleados order by edad asc limit 5;

/*FUNCION CASE()*/

/*Creando una consulta que muestre el nombre de los productos y los categorice como 'laptop'
'telefono' o 'otros'*/

select nombre, case when nombre like'%Laptop%' then 'Laptop'
when nombre like'%Telefono%' then 'Telefono'
else 'otros'
end as categoria from productos;

/*Creando una consulta que clasifique los productos segun la cantidad total de ventas*/

select producto_id, sum(cantidad) as total_ventas, case
when sum(cantidad) >= 9 then 'Alto Volumen'
when sum(cantidad) between 4 and 8 then 'Medio Volumen'
else 'Bajo Volumen'
end as categoria from ventas group by producto_id order by total_ventas desc;

/*Creando una consulta que categorice las ventas segun el monto total*/

select id, monto_total,
case
when monto_total < 500 then 'Venta pequeña'
when monto_total >= 500 and monto_total < 2000 then 'venta mediana'
else 'Venta grande'
end as tipo_venta from ventas;
