-- crearemos una tabla muy simple para problar el poder de sql
create  table dance(id_dance integer, nombre varchar2(40), edad integer);
--prepararemos el servidor e modo de desarrollador
set serveroutput on;
-- vamos a empezar con un bloque  plsql
declare
-- aqui se declaran las variables a usarse
edad integer;
years integer;
begin
-- aqui la logica de tu programa
years:=21;
edad:=years*365;
dbms_output.put_line('tu edad en dias es ' || edad);
end;
/
