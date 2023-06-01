CREATE DATABASE fungustech;
DROP DATABASE fungustech;
USE fungustech;

DROP TABLE empresa;
DROP TABLE usuario;
DROP TABLE localEstufa;
DROP TABLE sensor;
DROP TABLE leitura;

CREATE TABLE empresa (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
senha VARCHAR(45),
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

CREATE TABLE localEstufa (
idAquario INT PRIMARY KEY AUTO_INCREMENT,
rua VARCHAR(45),
numero INT,
cep CHAR(8),
andar INT,
complemento VARCHAR(45),
fkEmp INT,
 CONSTRAINT fkEmpresa FOREIGN KEY (fkEmP)
  REFERENCES empresa (idEmpresa));
        
CREATE TABLE medida (
idMedida INT PRIMARY KEY AUTO_INCREMENT,
momento DATETIME,
dht11_umidade DOUBLE,
dht11_temperatura DOUBLE,
fkLocal INT, 
FOREIGN KEY (fkLocal) REFERENCES localEstuda (idAquario));
 
SELECT * FROM empresa;
SELECT * FROM usuario;
SELECT * FROM localEstufa;
SELECT * FROM medida;
DESC empresa;
DESC usuario;
DESC localEstufa;
DESC sensor;
DESC leitura;
CREATE TABLE medida (
idMedida INT PRIMARY KEY AUTO_INCREMENT,
momento DATETIME,
dht11_umidade DOUBLE,
dht11_temperatura DOUBLE,
fk_aquario INT, 
FOREIGN KEY (fk_aquario) REFERENCES localEstuFa (idAquario));
