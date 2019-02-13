drop table if exists libros;

create table libros (
			titulo varchar(30),
            autor varchar(20),
            editorial varchar(15),
            precio float
);

describe libros;

insert into libros (titulo, autor, editorial, precio) 
 values ('El aleph', 'Borges', 'Planeta' , 15.00 );

insert into libros (titulo, autor, editorial, precio)
 values ('Martin Fierro', 'Jose Hernandez', 'Emece', 25.50);
 
insert into libros (titulo, autor, editorial, precio)
 values ('Aprenda PHP', 'Mario Molina', 'Emece',26.80);
 
insert into libros (titulo, autor, editorial, precio)
 values ('Cervantes y el quijote', 'Borges', 'Paidos', 45.50);
 
insert into libros (titulo, autor, editorial, precio)
 values ('Matematica estas ahi', 'Paenza', 'Paidos', 50.00);
 
select * from libros;

select @@sql_safe_updates;

set SQL_SAFE_UPDATES = 0;

update libros set autor = 'Adrian Paenza' where autor = 'Paenza';

select * from libros;

update libros set autor = 'Adrian Paenza' where autor = 'Paenza';

update libros set precio = 27 where autor = 'Mario Molina';

select * from libros;

update libros set editorial = 'Emece S.A.' where editorial = 'Emece';

select * from libros;

set SQL_SAFE_UPDATES = 1;

select @@sql_safe_updates; 
 
 