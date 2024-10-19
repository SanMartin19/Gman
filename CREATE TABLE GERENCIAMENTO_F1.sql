-- DDL => DATE DEFINITION LANGUAGE
-- CREATE, ALTER, DROP
-- CREATE => CRIAR;
-- ALTER => ALTERAR;
-- DROP => EXCLUIR;
-- BATABASE => Banco de Dados;
-- TABLE => Tabela;

-- comandos para criar banco de dados;
--CREATE DATABASE escola;
--CREATE DATABASE hospital;
--CREATE DATABASE lojaDeRoupas;

-- comando para usar o banco de dados;
--USE escola;

-- comando para alterar o nome dos bancos de dados;
--ALTER DATABASE gerenciamentoF1 MODIFY NAME = gerenciamento_f1;
--ALTER DATABASE escola MODIFY NAME = bdESCOLA;
--ALTER DATABASE hospital MODIFY NAME = bdHospital;
--ALTER DATABASE lojaDeRoupas MODIFY NAME = lojaDeRoupaEsquina;

--USE gerenciamento_f1;

-- comando para excluir banco de dados;
--DROP DATABASE bdESCOLA;
--DROP DATABASE bdHospital;
--DROP DATABASE lojaDeRoupaEsquina;
 

 USE gerenciamento_f1;

 CREATE TABLE Equipes(
	id_equipe INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nome VARCHAR(255) NOT NULL,
	pais VARCHAR(100), 
	chefe_equipe VARCHAR(255)
 );
 CREATE TABLE Pilotos(
	id_piloto INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nome VARCHAR(255) NOT NULL,
	data_nascimento DATE,
	nacionalidade VARCHAR(100),
	id_equipe INT,
	FOREIGN KEY (id_equipe) REFERENCES Equipes(id_equipe),
 );

 CREATE TABLE Pilotos_Equipe(
	id_piloto INT NOT NULL,
	id_equipe INT NOT NULL,
	PRIMARY KEY(id_piloto, id_equipe),
	FOREIGN KEY (id_piloto) REFERENCES Pilotos(id_piloto),
	FOREIGN KEY (id_equipe) REFERENCES Equipes(id_equipe)

 );
 CREATE TABLE Circuitos(
	id_circuito INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR (255) NOT NULL,
	local_circuito VARCHAR(255),
	comprimento DECIMAL(10,2)
 
 );
 CREATE TABLE Corrida(
	id_corrida INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR (255) NOT NULL,
	data_corrida DATE NOT NULL,
	id_circuito INT NOT NULL,
	FOREIGN KEY (id_circuito) REFERENCES Circuitos (id_circuito)
 );

 CREATE TABLE Resultados(
	id_resultado INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	id_corrida INT NOT NULL,
	id_piloto INT NOT NULL,
	posicao INT NOT NULL,
	tempo TIME,
	FOREIGN KEY (id_corrida) REFERENCES Corrida (id_corrida),
	FOREIGN KEY (id_piloto) REFERENCES Pilotos(id_piloto)
 );

 CREATE DATABASE escola;

 USE escola;

 CREATE TABLE Alunos(
 id_aluno INT  PRIMARY KEY IDENTITY(1,1),
 nome VARCHAR (255) NOT NULL,
 idadeAluno INT NOT NULL

 
 );

 CREATE DATABASE Biblioteca;

 USE biblioteca;

CREATE TABLE Editora(
	id_editora INT  PRIMARY KEY IDENTITY(1,1),
	nomeEditora VARCHAR (255) NOT NULL,
	enderecoEditora VARCHAR (255) NOT NULL,
	telEditora INT NOT NULL,
	dataFundacaoEditora DATE

	);

	CREATE TABLE Livros(
	id_livro INT  PRIMARY KEY IDENTITY(1,1),
	tituloLivro VARCHAR (255) NOT NULL,
	autorLivro VARCHAR (255) NOT NULL,
	anoPubicacaoLivro DATE NOT NULL, 
	categoriaLivro VARCHAR (255) NOT NULL,
	precoLivro DECIMAL (2,2) NOT NULL,
	dataCadastroLivro DATE NOT NULL,
	disponibilidadeLivro BINARY NOT NULL,
	resumoDoLivro VARCHAR (1000) ,
	numExemplaresDoLivro INT NOT NULL,
	id_editora INT NOT NULL,
	FOREIGN KEY (id_editora) REFERENCES Editora (id_editora)

	);



