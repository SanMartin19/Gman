
USE gerenciamento_f1;



SELECT P.nome AS NOMEPILOTO,
E.nome  AS NomeEquipe
FROM
Pilotos_Equipe PE
INNER JOIN Pilotos P ON PE.id_piloto = P.id_piloto
INNER JOIN Equipes E ON PE.id_equipe = E.id_equipe;
