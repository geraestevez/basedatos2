create table xxx (
  id_xxx integer,
  edad integer);

create or replace trigger xxx_mayor_edad before insert on xxx for each row
begin
if :new.edad < 18 then
raise_application_error(-20001, 'sasasasasa');
end if;
end;
/

insert into xxx values(3,15);
select * from xxx;

create table nomina_xxx (
  id_nomina integer,
  login varchar(20),
  saldo integer);
  
insert into nomina_xxx values(1,'yo',20000);


create or replace trigger actualizar_saldo before update on nomina_xxx for each row 
begin 
:new.saldo:=:new.saldo+:old.saldo;
end;
/
update nomina_xxx set
saldo=500 where id_nomina=1;
select * from nomina_xxx;
