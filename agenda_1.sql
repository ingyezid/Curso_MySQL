drop table if exists agenda;

create table agenda (
				apellido varchar(30),
                nombre varchar(20),
                domicilio varchar(30),
                telefono varchar(11)
);

describe agenda;

insert into agenda (apellido, nombre, domicilio, telefono) 
values ( 'Mores', 'Alberto', 'Colon 123', '4234567' );

insert into agenda (apellido, nombre, domicilio, telefono) 
values ( 'Torres', 'Juan', 'Avellaneda 135', '4458787' );

insert into agenda (apellido, nombre, domicilio, telefono) 
values ( 'Lopez', 'Mariana', 'Urquiza 333', '4545454' );

insert into agenda (apellido, nombre, domicilio, telefono) 
values ( 'Lopez', 'Fernando', 'Urquiza 333', '4545454');

insert into agenda (apellido, nombre, domicilio, telefono) 
values ( 'Suarez', 'Mariana', 'Sarmiento 643', '4445544');

insert into agenda (apellido, nombre, domicilio, telefono) 
values ( 'Lopez', 'Ana', 'Sucre 309', '4252587');

select * from agenda;

select * from agenda where apellido = 'Lopez';

select * from agenda where nombre <> 'Mariana';

select * from agenda where domicilio = 'Colon 123';

select * from agenda where telefono = '4545454';