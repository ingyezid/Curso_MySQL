drop table if exists  usuarios;

create table usuarios (
  nombre varchar(30),
  clave varchar(10)
);

insert into usuarios (nombre, clave) values ('Leonardo','payaso');
insert into usuarios (nombre, clave) values ('MarioPerez','Marito'); 
insert into usuarios (nombre, clave) values ('Marcelo','River');
insert into usuarios (nombre, clave) values ('Gustavo','River');

select * from usuarios;

set SQL_SAFE_UPDATES = 0;

update usuarios set clave='RealMadrid';

select nombre,clave from usuarios;

update usuarios set nombre='GustavoGarcia'
  where nombre='Gustavo';

update usuarios set nombre='MarceloDuarte', clave='Marce'
  where nombre='Marcelo';

select nombre,clave from usuarios;

set SQL_SAFE_UPDATES = 1;