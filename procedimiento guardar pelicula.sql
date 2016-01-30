create or replace 
PROCEDURE GUARDAR_PELICULA 
(
  MY_ID_PELICULA OUT VARCHAR2  
, MY_TITULO IN VARCHAR2  
, MY_SINOPSIS IN VARCHAR2  
, MY_CLASIFICACION IN VARCHAR2  
) AS 
BEGIN
  select sec_PELICULA.nextval into my_id_pelicula from dual;
  insert into pelicula values(my_id_pelicula, my_titulo, my_sinopsis,my_clasificacion);
END GUARDAR_PELICULA;
