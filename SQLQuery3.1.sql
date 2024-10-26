USE gerenciamento_f1;

SELECT * FROM Pilotos;

	DELETE FROM Pilotos_Equipe WHERE id_piloto =(
	SELECT id_piloto FROM Pilotos WHERE nome LIKE '%Oscar%'
	);

	DELETE FROM Pilotos WHERE nome LIKE '%OSCAR%'
	 SELECT * FROM Pilotos;