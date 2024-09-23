/*consulta que categoriza los productos por precio ( 'caro' , ' medio' y ' barato')*/

select nombre, 
case
when precio >= 500 then 'caro'
when precio >= 200 and precio < 500 then 'Medio'
else 'Barato'
end as Categoria
from productos;

/*Consulta que categoriza a los empleados por edad ('Joven', 'Adulto' y 'Adulto mayor')*/

select nombre,
case
when edad < 30 then 'joven'
when edad between 30 and 40 then 'Adulto'
else 'Adulto Mayor'
end as Categoria
from empleados; 

/*Consulta que categoriza las ventas por cantidad ('Poca cantidad' , 'Cantidad mderada'
y 'Mucha cantidad')*/

select id, case
when cantidad < 3 then 'Poca cantidad'
when cantidad >= 3 and cantidad < 6 then 'Cantidad moderada'
else 'Mucha Cantidad'
end as Categoria
from Ventas;

/*Consulta que categoriza los nombres de clientes ('Comenzando con A', 'Comenzando con M' y
'Otros')*/

select nombre,
case
when nombre like 'a%' then 'Comienza con A'
when nombre like 'M%' then 'Comienza con M'
else 'Otros'
end as Categoria
from Clientes;

/*consulta que categoriza a los empleados por salario ('Salario alto', 'Salario medio' y 
'Salario bajo')*/

select nombre, case
when salario >=3500 then 'salario alto'
when salario >= 3000 and Salario < 3500 then 'Salario medio'
Else 'Salario bajo'
end as Categoria
from empleados;

