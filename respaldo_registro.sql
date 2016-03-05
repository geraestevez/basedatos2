create table registro(id_reg integer primary key,
                      nombre varchar2(40),
                      email varchar2(40),
                      edad integer);
create table registro_mayores(id_regmayor integer primary key,
                              nombre varchar2(40),
                              email varchar2(40),
                              edad integer);
create table registro_menores(id_regmenor integer primary key,
                              nombre varchar2(40),
                              email varchar2(40),
                              edad integer);
                              
create or replace trigger respaldo_registro after insert on registro 
for each row
begin

if :new.edad <0 then
raise_application_error(-20001, 'EDAD INVALIDA');
else
if :new.edad >= 18 then
insert into registro_mayores values (:new.id_reg, :new.nombre, :new.email, :new.edad);
else
insert into registro_menores values (:new.id_reg, :new.nombre, :new.email, :new.edad);


end if;
end if;
end;
/

insert into registro values ('7','gera', 'gera@hotmail.com','-23');

select * from registro;
select * from registro_mayores;
select * from registro_menores;
/
