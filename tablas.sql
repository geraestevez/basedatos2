Create table libro(
id_libro integer,
nombre varchar2(100),
editorial varchar2(100),
autor varchar2(100),
 CONSTRAINT PK_id_libro PRIMARY KEY (id_libro));
 
 create table persona(
id_persona integer,
nom varchar2(300),
dir varchar2(100),
cp integer,
muni varchar2(40),
tel varchar2(20),
mail varchar2(60),
password varchar2(60),
CONSTRAINT PK2_id_persona PRIMARY KEY (id_persona));


create table renta(
id_renta integer,
lid_libro integer,
pid_persona integer,
CONSTRAINT PK3_id_renta PRIMARY KEY (id_renta),
CONSTRAINT FK1_id_libro FOREIGN KEY (lid_libro) REFERENCES libro(id_libro),
CONSTRAINT FK2_id_persona FOREIGN KEY (pid_persona) REFERENCES persona(id_persona));


CREATE SEQUENCE sec_libro
start WITH 1
increment by 1
nomaxvalue;

CREATE SEQUENCE sec_persona
start WITH 1
increment by 1
nomaxvalue;

CREATE SEQUENCE sec_renta
start WITH 1
increment by 1
nomaxvalue;




create or replace 
PROCEDURE guardar_libro
(
my_id_libro out varchar2,
my_nombre in varchar2,
my_editorial in varchar2,
my_autor in varchar2
) AS 
BEGIN
  select sec_libro.nextval into my_id_libro from dual;
  insert into libro values(my_id_libro, my_nombre, my_editorial,my_autor);
END guardar_libro;
/



