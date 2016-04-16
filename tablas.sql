Create table libros(
id_libro int auto_increment not null,
nombre varchar(100),
editorial varchar(100),
autor varchar(100)
CONSTRAINT PK1_id_libro PRIMARY KEY (id_libro));


create table persona(
id_persona int auto_increment not null,
nom varchar(300),
dir varchar(100),
cp int(10),
muni varchar(40),
tel varchar(20),
mail varchar(60),
password varchar(60)
CONSTRAINT PK2_id_persona PRIMARY KEY (id_persona));


create table renta(
id_renta int auto_increment not null,
lid_libro int,
pid_persona int,
CONSTRAINT PK3_id_renta PRIMARY KEY (id_renta),
CONSTRAINT FK1_id_libro FOREIGN KEY (lid_libro) REFERENCES libros(id_libro),
CONSTRAINT FK2_id_persona FOREIGN KEY (pid_persona) REFERENCES persona(id_persona));
