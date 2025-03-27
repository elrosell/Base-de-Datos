
/*crear base de datos*/

create database Fabrica;
#Inicializar funcionamiento de la Base de Datos
use Fabrica;
#Creación de la Tabla planta
create table Planta
(idPlanta int primary key,
Superficie numeric(3,2),
nomProceso varchar(20),
Complejidad varchar (20)
);

#Mostrar tablas
show tables;

#Datos de cada tabla
describe Planta;
describe Tecnico;
describe Maquina;

#Insertar datos a tablas
insert into Planta values 
(1,5.6,"Proceso1","Complicado");

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

#Creación tabla Técnico
create table Tecnico 
(Rfc varchar (13) primary key,
nombreTec varchar (20),
apellidoTec varchar (30),
fechaNaci varchar (10),
telTec int,
fechaOper varchar (10),
numMaquina int, 
foreign key (numMaquina) references Maquina(numMaquina)); 

#Creación Tabla Maquina
create table Maquina
(numMaquina int primary key,
nomMaquina varchar(10),
marca varchar (10),
modelo varchar (10),
idPlanta int,
foreign key (idPlanta) references Planta(idPlanta)
);
