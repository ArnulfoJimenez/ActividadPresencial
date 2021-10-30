create database Hospital
use Hospital;

create table Paciente(
Id_paciente int identity,
NumeroHistorialClinico int primary key ,
Nombre_paciente varchar (50) ,
ApellidoPaciente varchar (50) ,
Sexo varchar (50),
Domicilio varchar (50),
Provincia varchar (50) ,
Codigo_postal varchar (50) ,
Numero_telefono int ,
Observaciones varchar (100) ,

);

create table Medico(
Id_Medico int identity,
CodigoIdentificacionMedico int primary key,
Nombre_Medico varchar (50),
Apellido_Medico varchar (50),
Sexo varchar (50),
Especialidad varchar (50),
Numero_colegiado int,
Cargo varchar (50),
Observaciones varchar (100),
);

create table Ingreso (
Id_ingreso int primary key identity,
Procedencia varchar (50) not null unique,
Fecha_Ingreso date default getdate(),
Numero_Planta varchar (50) not null,
Numero_cama varchar (50) not null,
Observaciones varchar (50),
NumeroHistorialClinico int,
CodigoIdentificacionMedico int




FOREIGN KEY (NumeroHistorialClinico) REFERENCES Paciente (NumeroHistorialClinico),
FOREIGN KEY (CodigoIdentificacionMedico) REFERENCES Medico(CodigoIdentificacionMedico)
);


select * from Paciente

INSERT INTO Paciente VALUES( 100, 'Pablo','Alvarado','M','Chalate', 'Chalatenago','05dff',73829922,'Enfermo');
INSERT INTO Paciente VALUES( 101, 'Edmundo','Vasquez','M','Chalate', 'Chalatenago','05dff',72190291,'Sano');
INSERT INTO Paciente VALUES( 102, 'Arnulfo','Jimenez','M','Chalate', 'Chalatenago','05dff',78021134,'Sano');
INSERT INTO Paciente VALUES( 103, 'William','Lopez','M','Chalate', 'Chalatenago','05dff',7890393,'Enfermo');
INSERT INTO Paciente VALUES( 104, 'Miguel','Salazar','M','Chalate', 'Chalatenago','05dff',73451133,'Muerto');
INSERT INTO Paciente VALUES( 105, 'Iris','Gutierrez','F','Chalate', 'Chalatenago','05dff',77393933,'Enfermo');
INSERT INTO Paciente VALUES( 106, 'Erick','Vasquez','M','Chalate', 'Chalatenago','05dff',71739299,'Enfermo');
INSERT INTO Paciente VALUES( 107, 'Jimena','Chavez','F','Chalate', 'Chalatenago','05dff',61452388,'Sano');
INSERT INTO Paciente VALUES( 108, 'Carlos','Fuentes','M','Chalate', 'Chalatenago','05dff',77553399,'Enfermo');
INSERT INTO Paciente VALUES( 109, 'Diego','Menjivar','M','Chalate', 'Chalatenago','05dff',70781233,'Enfermo')



INSERT INTO Medico VALUES( 1001, 'Diego','Fuentes','M','Cardiologia', '222001','Obervacion','Sano');
INSERT INTO Medico VALUES( 1005, 'Kevin','Santos','M','Obstetra', '283631','Pediatra','Sano');
INSERT INTO Medico VALUES( 1002, 'Maria','Lopez','F','Cirugia', '772299','CirugiasGeneral','Sano');
INSERT INTO Medico VALUES( 1003, 'Manuel','Rivera','M','Técnicas Terapéuticas', '832721','Odontologia','Sano');
INSERT INTO Medico VALUES( 1004, 'Fernando','Mejia','M','Aparato Respiratorio', '772133','Neumologo','Sano');
INSERT INTO Medico VALUES( 1006, 'Miguel','Peñate','M','Pediatria', '345611','Pediatra','Sano');

select * from Medico


INSERT INTO Ingreso VALUES( 'ESA','',10,22, 'Cama Buena',100,1001);
INSERT INTO Ingreso VALUES( 'ESA2','',11,23, 'Cama Buena',101,1002);
INSERT INTO Ingreso VALUES( 'ESA3','',12,24, 'Cama Buena',102,1003);
INSERT INTO Ingreso VALUES( 'ESA4','',13,25, 'Cama Buena',103,1004);
INSERT INTO Ingreso VALUES( 'ESA5','',14,26, 'Cama Buena',104,1005);
INSERT INTO Ingreso VALUES( 'ESA6','',15,27, 'Cama Buena',105,1006);
