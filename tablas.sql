Create table libros(

id_libro int auto_increment not null primary key,

nombre varchar(100),

editorial varchar(100),

autor varchar(100));

create table persona(

id_persona int auto_increment not null primary key,

dir varchar(100),

cp int(10),

muni varchar(40),

tel varchar(20),

mail varchar(60),

password varchar(60)

);

create table renta(

id_renta int auto_increment not null primary key,

lid_libro int,

pid_persona int,

FOREIGN KEY (pid_persona) REFERENCES persona(id_persona),

FOREIGN KEY (lid_libro) REFERENCES libros(id_libro));
