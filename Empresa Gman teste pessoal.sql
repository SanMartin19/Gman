CREATE DATABASE Gman

USE Gman;

CREATE TABLE Cliente(
	id_cliente INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	nome_cliente VARCHAR(255) NOT NULL,
	endereco_cliente VARCHAR(255) NOT NULL,
	telefone_cliente VARCHAR(25) NOT NULL,
	email_cliente VARCHAR(255) NOT NULL,
	login_cliente VARCHAR(255) NOT NULL,
	cartao_cliente VARCHAR(25)NOT NULL

);

CREATE TABLE Funcionarios(
	id_funcionario INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nome_funcionario VARCHAR (255) NOT NULL,
	funcao_funcionario VARCHAR(100) NOT NULL,
	telefone_funcionario VARCHAR(25) NOT NULL,
	login_funcionario VARCHAR(100) NOT NULL

);
CREATE TABLE EquipesDeManutencao(
	id_equipesDeManutencao INT PRIMARY KEY IDENTITY (1,1)  NOT NULL,
	regiaoEquipe VARCHAR (100) NOT NULL,
	supervisorEquipe VARCHAR (255) NOT NULL,
	statusEquipe VARCHAR(50) DEFAULT 'Ativa' NOT NULL,
	numMembrosEquipe INT DEFAULT 0
);
CREATE TABLE EquipeManu(
	id_equipeManu INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	id_equipesDeManutencao INT NOT NULL,
	FOREIGN KEY (id_equipesDeManutencao) REFERENCES EquipesDeManutencao (id_equipesDeManutencao),
	id_funcionario INT NOT NULL,
	FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);

CREATE TABLE ChamadaDeManutencao(
	id_manutencao INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	tipoDeManutencao VARCHAR (255) NOT NULL,
	dataManutencao DATE NOT NULL,
	reagendamentoManutencao DATE,
	pagamentoManutencao DECIMAL (10,2),
	id_Cliente INT NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente),
	id_equipeManu INT NOT NULL,
	FOREIGN KEY (id_equipeManu) REFERENCES EquipeManu(id_equipeManu)
);
