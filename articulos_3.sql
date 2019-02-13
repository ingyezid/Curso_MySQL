drop table if exists articulos;

create table articulos (
				codigo integer, 
                nombre varchar(20),
                descripcion varchar(30), 
                precio float,
                cantidad integer
);

describe articulos;

insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
  
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
  
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
  
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
  
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);
  
select * from articulos;
  
select @@sql_safe_updates;
  
set SQL_SAFE_UPDATES = 0;
  
update articulos set precio = 400 where descripcion = 'Epson Stylus C45';

select * from articulos;

update articulos set cantidad = 100 where nombre = 'teclado';

select * from articulos;

update articulos set cantidad = 50, precio = 550 where codigo = 2;

select * from articulos;

update articulos set cantidad = 100 where cantidad = 1000;
  
set SQL_SAFE_UPDATES = 1;
  
select @@sql_safe_updates;