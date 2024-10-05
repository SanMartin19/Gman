USE gerenciamento_f1;
 SELECT * FROM Equipes;


 -- SELECT = selecionar.
 -- * = todas as colunas.
 -- FROM  = referencia a tabela.

 SELECT nome, chefe_equipe FROM Equipes;


SELECT nome, chefe_equipe FROM Equipes
WHERE nome = 'Mercedes' AND id_equipe=1;

SELECT nome, chefe_equipe FROM Equipes
WHERE id_equipe>1 AND id_equipe<4;

SELECT * FROM Equipes ORDER BY nome;