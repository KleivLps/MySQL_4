/*mostrando los 5 productos mas caros de 'productos'*/

select * from productos
order by precio desc
limit 5;

/*mostrando los 10 primeros empleados en orden alfabetico por apellido*/

select * from empleados
order by apellido asc
limit 10;

/*mostrando las 3 ventas con el monto total mas alta*/

select * from ventas 
order by monto_total desc
limit 3;