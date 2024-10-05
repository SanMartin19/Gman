USE gerenciamento_f1;
--CTE : Common Table Expression.
-- A CTE permite definir um nome com resuçltados intermediarios, e usar esse nome em uma consulta pricipal.

WITH buscaIdEquipe AS (
	SELECT id_equipe
	FROM Equipes
	WHERE nome = 'McLaren'
)
INSERT INTO Pilotos (nome, data_nascimento, nacionalidade, id_equipe)
SELECT
'Lando Norris',
' 1999-11-13',
'Britanico',
id_equipe FROM buscaIdEquipe;

WITH buscaIdEquipe AS (
	SELECT id_equipe
	FROM Equipes
	WHERE nome = 'McLaren'
)
INSERT INTO Pilotos (nome, data_nascimento, nacionalidade, id_equipe)
SELECT
'Oscar Piastri',
' 2001-04-06',
'Australiano',
id_equipe FROM buscaIdEquipe;

SELECT * FROM Pilotos;