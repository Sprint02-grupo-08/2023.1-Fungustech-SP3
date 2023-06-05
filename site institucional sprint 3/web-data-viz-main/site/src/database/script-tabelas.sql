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
senha VARCHAR(64),
CNPJ VARCHAR (45)) AUTO_INCREMENT = 01;

insert into empresa values 
(null, 'sptech', '123', '1234567891234');

CREATE TABLE usuario (
idUsuario INT AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(64),
fkEmpresa INT,
 CONSTRAINT fkEmp FOREIGN KEY (fkEmpresa)
  REFERENCES empresa (idEmpresa),
   CONSTRAINT idUsuario PRIMARY KEY (idUsuario, fkEmpresa));


CREATE TABLE localEstufa (
idLocal INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
rua VARCHAR(45),
numero INT,
cep CHAR(8),
andar INT,
complemento VARCHAR(45),
fkEmp INT,
 CONSTRAINT fkEmpresa FOREIGN KEY (fkEmP)
  REFERENCES empresa (idEmpresa));
  
  
  
  INSERT INTO localEstufa (nome, rua, numero, cep, andar, complemento, fkEmp)
VALUES ('estufa teste','Rua das Flores', 123, '12345678', 2, 'Apto 201', 1);
        
CREATE TABLE medida (
idMedida INT PRIMARY KEY AUTO_INCREMENT,
momento DATETIME,
dht11_umidade decimal (10,2),
dht11_temperatura decimal (10, 2),
fkLocal INT, 
FOREIGN KEY (fkLocal) REFERENCES localEstufa (idLocal));

CREATE TABLE funcionario (
idFuncionario INT AUTO_INCREMENT, 
email VARCHAR(45) UNIQUE, 
fkEmpresa INT,
 CONSTRAINT fkEmpre FOREIGN KEY (fkEmpresa)
  REFERENCES empresa (idEmpresa),
   CONSTRAINT idUsuario PRIMARY KEY (idFuncionario, fkEmpresa)
);


INSERT INTO medida (dht11_umidade, dht11_temperatura, momento, fkLocal) VALUES (1, 2, now(), 1);

INSERT INTO funcionario (email, fkEmpresa) VALUES 
('Joao@email.com', 1);



SELECT * FROM funcionario;
SELECT * FROM empresa;
SELECT * FROM usuario;
SELECT * FROM localEstufa;
SELECT * FROM medida;
DESC empresa;
DESC usuario;
DESC localEstufa;
DESC sensor;
DESC leitura;

INSERT INTO medida (dht11_umidade, dht11_temperatura, luminosidade, lm35_temperatura, chave, momento, fk_aquario) VALUES (?, ?, ?, ?, ?, now(), 1);

select 
        dht11_temperatura as temperatura, 
        dht11_umidade as umidade,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fkLocal
                        from medida where fkLocal = 1
                    order by id desc limit 7;