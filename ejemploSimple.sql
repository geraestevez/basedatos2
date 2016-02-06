create table simple1(id_simple integer, edad integer, nombre varchar(40));
-- la llanamos con informacion rapida
declare
mi_edad integer;
begin
mi_edad:=20;
for i int 1..20 loop
mi_edad:=mi_edad+i;
insert intosimple1 values (i;mi_edad,'juan carlos');
end loop;
select * from simple1;
end;
/
