
/*crear base de datos*/

create database Fabrica;
#Inicializar funcionamiento de la Base de Datos
use Fabrica;
#Creación de la Tabla planta
create table Planta
(idPlanta int primary key,
Superficie numeric(3,2),
nomProceso varchar(30),
Complejidad varchar (30)
);

#Mostrar tablas
show tables;

#Datos de cada tabla
describe Planta;
describe Tecnico;
describe Maquina;

#Insertar datos a tablas
insert into Planta values 
(1,5.6,"Proceso_del_Chino","Complicado");
insert into Planta values 
(2,6.6,"Proceso_del_Chinito","Facil_Uso");
insert into Planta values 
(3,3.6,"Proceso_Chino_Pancita","No_tan_Complicado");


#consultar registros de la tabla
select * from Planta;
select * from Tecnico;
select * from Maquina;

#Eliminar registros
delete from Planta;
delete from Tecnico;
delete from Maquina;

#Eliminar tabla
drop table Planta;
drop table Tecnico;
drop table Maquina;

#Creación Tabla Maquina
create table Maquina
(numMaquina int primary key,
nomMaquina varchar(30),
marca varchar (30),
modelo varchar (30),
idPlanta int,
foreign key (idPlanta) references Planta(idPlanta)
);

#Insertar valores Maquina
insert into Maquina values
(1, "MaquinaChino", "MarcaCAT", "Modleo_Chinito", 1),
(2, "MaquinaChinoPancita", "MarcaDOGS", "Modleo_Chinitos", 2),
(3, "MaquinaChinoBecario", "MarcaFISH", "Modleo_Chinito_Pacas", 3);



#Creación tabla Técnico
create table Tecnico 
(Rfc varchar (30) primary key,
nombreTec varchar (30),
apellidoTec varchar (30),
fechaNaci varchar (30),
telTec int (30),
fechaOper varchar (30),
numMaquina int, 
foreign key (numMaquina) references Maquina(numMaquina)
); 

#Insertar valores Tecnico
insert into Tecnico values 
("TIGJ880315P58", "Chinos", "Huerta", "03/12/2000", 55-5148, "Mañanita", "001"),
("LOLO850614B79", "Chino", "Pancita", "03/05/2003", 55-5317, "Mañanita", "002"),
("FERM710826A68", "Chino", "Becario", "03/07/2001", 55-5486, "Tardecita", "003");

#crear consultas

use fabrica;
#where (condicional)
select * from Planta 
where Complejidad="Facil_Uso";
select * from Planta 
where Superficie>=6;

#order by (filtra)
select * from Planta 
order by Superficie desc;
select * from Planta 
order by Complejidad;

#between (filtro entre rango)
select * from Planta 
where Superficie between 5 and 7;
select * from Planta 
where Superficie > 5 and Superficie < 7;

select * from Planta 
where Superficie > 5 and Superficie < 9 order by Superficie desc;


select * from Tecnico
where fechaNaci like '%80';

select rfc,nombre,maquina.numMaquina,nombreMaquina,complejidad from tecnico

#on Tecnico.numMaquina=Maquina.numMaquina
inner join planta 
on Maquina.idPlanta=Planta.idPlanta 
where Maquina.numMaquina=1;





