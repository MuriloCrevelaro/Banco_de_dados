USE db_escola_T

--Lista os 3 primeiros alunos(em ordem decrecente)
SELECT TOP 3 matricula
FROM tb_aluno
ORDER BY id ASC;

SELECT TOP 3 matricula
FROM tb_aluno
ORDER BY id DESC;


--Lista todos os alunos
SELECT nome, cpf 
FROM tb_aluno 
WHERE nome = 'Sophia Letícia Amanda Monteiro';

--Liste o nome da escola Torloni
SELECT nome
FROM tb_escola

--Mostre as 3 turmas que tem o nome SEDUC
SELECT nome_turma
FROM tb_turma;

--Exiba somente 2 alunos em ordem do mais recente para o menos recente
SELECT TOP 2 *
FROM tb_aluno
ORDER BY nome DESC

--Mostre quentos registros existem na base
SELECT COUNT(nome) AS qtd_alunos FROM tb_aluno
--Mostre os alunos mais velhos
SELECT MAX(data_nasc) AS aluno_mais_velho FROM tb_aluno
--Exibir a idade mais velha e a idade mais nova em uma unica consulta
SELECT MAX(data_nasc) AS aluno_mais_novo, MIN(data_nasc) AS aluno_mais_velho
FROM tb_aluno;

--Exibe a média de notas que valem nas provas
SELECT AVG(nota) AS média_nota FROM tb_prova;
--Exiba a soma dos id's de turma
SELECT SUM(id) FROM tb_turma
SELECT * FROM tb_turma;

--Mostre o nome dos alunos mais novos
SELECT MAX(data_nasc) AS aluno_mais_novo, nome
FROM tb_aluno
GROUP BY nome
ORDER BY aluno_mais_novo DESC;

--Mostre o nome dos alunos mais velhos
SELECT MIN(data_nasc) AS aluno_mais_velho, nome
FROM tb_aluno
GROUP BY nome
ORDER BY aluno_mais_velho ASC;

--Identificar quantas turmas tem no periodo da tarde
SELECT COUNT(periodo)
FROM tb_turma
WHERE periodo = 'Tarde'
