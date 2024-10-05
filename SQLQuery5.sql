USE Gman;


INSERT INTO Funcionarios( nome_funcionario, funcao_funcionario, telefone_funcionario, email_funcionario,senha_funcionario,idEquipeFuncionario )
VALUES(
'Oscar Silva',
'Mecânico',
'199800000',
'oscar@gmail.com',
'123456789',
(SELECT id_equipesDeManutencao
	FROM EquipesDeManutencao
	WHERE regiaoEquipe = 'Minas Gerais'
)
);


SELECT * FROM Funcionarios;
