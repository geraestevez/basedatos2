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

create or replace 
PROCEDURE guardar_persona
(
my_id_persona out varchar2,
my_nom in varchar2,
my_dir in varchar2,
my_cp in varchar2,
my_muni in varchar2,
my_tel in varchar2
) AS 
BEGIN
  select sec_persona.nextval into my_id_persona from dual;
  insert into persona values(my_id_persona, my_nom, my_dir,my_cp,my_muni,my_tel);
END guardar_persona;
/

create or replace 
PROCEDURE guardar_renta
(
my_id_renta out varchar2,
my_lid_libro in varchar2,
my_pid_persona in varchar2
) AS 
BEGIN
  select sec_renta.nextval into my_id_renta from dual;
  insert into renta values(my_id_renta, my_lid_libro, my_pid_persona);
END guardar_renta;
/


create or replace 
PROCEDURE borrar_persona
(
my1_id_persona out varchar2,
my1_nom in varchar2,
my1_dir in varchar2,
my1_cp in varchar2,
my1_muni in varchar2,
my1_tel in varchar2
) AS 
BEGIN
  delete from persona  where my1_id_persona=id_persona;
END borrar_persona;
/


create or replace 
PROCEDURE borrar_persona
(
my1_id_persona in varchar2
) AS 
BEGIN
  delete from persona  where my1_id_persona=id_persona;
END borrar_persona;
/

create or replace 
PROCEDURE borrar_libro
(
my1_id_libro in varchar2
) AS 
BEGIN
  delete from libro  where my1_id_libro=id_libro;
END borrar_libro;
/

create or replace 
PROCEDURE borrar_renta
(
my1_id_renta in varchar2
) AS 
BEGIN
  delete from renta  where my1_id_renta=id_renta;
END borrar_renta;
/
