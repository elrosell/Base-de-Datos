
/*crear base de datos*/

create database Fabrica;
use Fabrica;
create table Planta
(idPlanta int primary key,
Superficie numeric(3,2),
nomProceso varchar(20),
Complejidad varchar (20)
);

show tables;

describe planta;

insert into Planta values 
(1,5.6,"Proceso1","Complicado");

#consultar registros de la tabla
select * from Planta;

#Eliminar registros
delete from Planta;

#Eliminar tabla
drop table Planta;

create table Tecnico 
(Rfc varchar (13) primary key,
nombreTec varchar (20),
apellidoTec varchar (30),
fechaNaci varchar (10),
telTec int,
fechaOper varchar (10),
numMaquina int, 
foreign key (numMaquina) references Maquina(numMaquina)); 

create table Maquina
(numMaquina int primary key,
nomMaquina varchar(10),
marca varchar (10),
modelo varchar (10),
idPlanta int,
foreign key (idPlanta) references Planta(idPlanta)
);