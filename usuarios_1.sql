drop table if exists  usuarios;

create table usuarios (
  nombre varchar(30),
  clave varchar(10)
);

insert into usuarios (nombre, clave) values ('Leonardo','payaso');
insert into usuarios (nombre, clave) values ('MarioPerez','Marito');
insert into usuarios (nombre, clave) values ('Marcelo','River');
insert into usuarios (nombre, clave) values ('Gustavo','River');

select @@sql_safe_updates;

set SQL_SAFE_UPDATES=0;

select @@sql_safe_updates;

delete from usuarios;

delete from usuarios where nombre='Leonardo';

select nombre,clave from usuarios;

delete from usuarios where clave='River';

select nombre,clave from usuarios;

set SQL_SAFE_UPDATES=1;

select @@sql_safe_updates;
