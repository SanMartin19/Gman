USE Gman;

SELECT Func.nome_funcionario AS Nome,
       EM.regiaoEquipe AS Regi�o
	   FROM Funcionarios Func 
	   INNER JOIN EquipesDeManutencao EM 
	   ON Func.idEquipeFuncionario = EM.id_equipesDeManutencao;

	   