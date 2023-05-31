CREATE DATABASE fungustech;

USE fungustech;

DROP TABLE empresa;
DROP TABLE usuario;
DROP TABLE localEstufa;
DROP TABLE sensor;
DROP TABLE leitura;

CREATE TABLE empresa (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
CNPJ CHAR (14)) AUTO_INCREMENT = 01;

CREATE TABLE usuario (
idUsuario INT AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(45),
fkEmpresa INT,
	CONSTRAINT fkEmp FOREIGN KEY (fkEmpresa)
		REFERENCES empresa (idEmpresa),
			CONSTRAINT idUsuario PRIMARY KEY (idUsuario, fkEmpresa));

DROP TABLE usuario;

CREATE TABLE localEstufa (
idLocal INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
rua VARCHAR(45),
numero INT,
cep CHAR(8),
andar INT,
complemento VARCHAR(45),
fkEmp INT,
	CONSTRAINT fkEmpresa FOREIGN KEY (fkEmP)
		REFERENCES empresa (idEmpresa)) AUTO_INCREMENT = 200;

CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(20)
	CONSTRAINT chkNome 
			CHECK (nome IN ('dht11','lm35')),
tipo VARCHAR(20)
	CONSTRAINT chkTipo 
			CHECK (tipo IN ('umnidade','temperatura')),
fkLocal INT,
	CONSTRAINT fkLocal FOREIGN KEY (fkLocal)
		REFERENCES localEstufa (idLocal)) AUTO_INCREMENT = 400;
        
CREATE TABLE leitura (
idLeitura INT AUTO_INCREMENT,
dataHora DATETIME,
temperatura DOUBLE,
umidade DOUBLE,
fkSensor INT,
	CONSTRAINT fkSensor FOREIGN KEY (fkSensor)
		REFERENCES sensor (idSensor),
CONSTRAINT idLeitura PRIMARY KEY (idLeitura, fkSensor));
	
SELECT * FROM empresa;
SELECT * FROM usuario;
SELECT * FROM localEstufa;
SELECT * FROM sensor;
SELECT * FROM leitura;
DESC empresa;
DESC usuario;
DESC localEstufa;
DESC sensor;
DESC leitura;






	
            
