-- DATA MANIPULATION LANGUAGE
-- INSERT INTO :INSERIR DADOS.
-- SELECT : CONSULTA DE DADOS.
-- UPDATE : ATUALIZAÇÃO DE DADOS.
-- DELETE : DELETAR DADOS.



USE Gman;
INSERT INTO Cliente(nome_cliente,endereco_cliente,telefone_cliente, email_cliente, login_cliente, cartao_cliente)
VALUES
('Condessa', 'Rua José,123', '1998882365', 'condessa@gmail.com.br',  '123456789', '987456213'),
('Promac', 'Rua Promac,1000', '1998888889', 'promac@gmail.com', '987654321', '123456789');


SELECT * from Cliente;


INSERT INTO Funcionarios(nome_funcionario, funcao_funcionario, telefone_funcionario, email_funcionario, senha_funcionario)
VALUES
('Caio', 'auxiliar expedição', '1998882365', 'caio@gmail.com.br',  '123456789'),
('Alisson', 'auxiliar de produção', '1998888889', 'alisson@gmail.com', '987654321'),
('Eledilson', 'Eletricista', '19982050000', 'sanmartinsan.san@gmail.com', '9513574628');


SELECT * FROM Funcionarios;

INSERT INTO EquipesDeManutencao(regiaoEquipe, supervisorEquipe, statusEquipe,numMembrosEquipe)
	VALUES
	('Minas Gerais', 'Caio', 'disponivel','5'),
	('Pernambuco', 'Alisson', 'disponivel','5'),
	('São Paulo', 'Eledilson', 'disponivel','5');

	SELECT * FROM EquipesDeManutencao