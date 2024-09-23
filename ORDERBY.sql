/*ordenando empleados por salario de manera ascendente*/

select * from empleados
order by salario asc;

/*ordenando empleados por salario de manera descendiente*/

select * from empleados
order by salario desc;

/*ordenando las ventas por cantidad de manera ascendente y luego por el precio unitario
de manera descendente*/

select * from ventas
order by cantidad asc, precio_unitario desc;