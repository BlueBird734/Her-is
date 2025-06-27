Create Table usuario (
Email Varchar(100),
Senha Varchar(10),
Nome Varchar(50) primary key
)

CREATE TABLE Herois ( 
CPF CHAR(11) NOT NULL  PRIMARY KEY,  
Nome VARCHAR(100) NOT NULL, 
Data_nascimento DATE NOT NULL,
Email Varchar(100),
Telefone Varchar(10),
Endereco Varchar(50) NOT NULL,
Historia VARCHAR(200)
);

CREATE TABLE local( 
Bairro CHAR(11) NOT NULL  PRIMARY KEY,  
Casa VARCHAR(15) NOT NULL, 
Lojas Varchar(15) NOT NULL,
Ruas Varchar(20),
);

CREATE TABLE FaleConosco ( 
Nome CHAR(100) NOT NULL  PRIMARY KEY,   
Telefone Varchar(10) NOT NULL,
Descricao Varchar(200),
Data_Registro Date Not Null
);
