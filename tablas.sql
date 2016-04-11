create  table autor(
  id_autor integer, 
  nombre varchar2(100),
  CONSTRAINT PRIMARY KEY (id_autor));



create  table editorial(
  id_editorial integer, 
  nombre varchar2(100),
  CONSTRAINT PRIMARY KEY (id_editorial));


create  table libro(
  id_libro integer, 
  nombre varchar2(100),
  drescripcion varchar2(100),
  id_autor integer,
  id_editorial integer
  CONSTRAINT PK_ID_PRODUCTO PRIMARY KEY (id_libro),
  
  );



REATE TABLE PRODUCTO (ID_PRODUCTO INTEGER, 
DESCRIPCION VARCHAR2(120),  MARCA VARCHAR2(120), 
CATEGORIA VARCHAR2(80), PRECIO FLOAT,
CONSTRAINT PK_ID_PRODUCTO PRIMARY KEY (ID_PRODUCTO));
