create table trabajor(
id_trabajador integer,
nombre varchar(20),
tiempo_laborado integer,
sueldo_base float,
CONSTRAINT PK1_id_trabajador PRIMARY KEY (id_trabajador));

create table nomina(
id_nomina integer,
tid_trabajador integer,
horas_trabajadas integer,
saldo float,
CONSTRAINT PK2_id_nomina PRIMARY KEY (id_nomina),
CONSTRAINT Fk1_id_trabajador FOREIGN KEY (tid_trabajador) REFERENCES trabajor(id_trabajador));

intert into trabajador values('1','juan','7','7000');
intert into nomina (id_nomina) values(1);
