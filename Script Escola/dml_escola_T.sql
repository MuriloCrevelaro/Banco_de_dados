--Usar banco j� criado
USE db_escola_T

--Inserir um registro na tabela escola
INSERT INTO tb_escola(nome, endereco)
VALUES('Torloni', 'Estrada das l�grimas, 579 - S�o Jos�');
--Est� na ordem das colunas do tb_escola
SELECT * FROM tb_escola;

--Inserir um registro na tabela turma
INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
VALUES(2, 'Tarde', 16, '2S SEDUC'),
	  (3, 'Manh�', 16, '2S SEDUC'),
      (4, 'Noite', 16, '2S SEDUC');

SELECT * FROM tb_turma;

--Inserir um registro na tabela prova
INSERT INTO tb_prova(nome_professor, materia, duracao, nota,data_p)
VALUES('Ana Claudia', 'Educa��o F�sica', '13:15:00', 0, '2025-09-25'),
	  ('Rog�ria', 'Matem�tica', '14:20:00', 10, '2025-09-26'),
	  ('Ivan', 'Portugu�s', '08:30:00', 7.5, '2025-09-29');

SELECT * FROM tb_prova

--Inserir um registro na tabela prova
INSERT INTO tb_aluno(cpf,data_nasc,matricula,nome,id_escola)
VALUES('18647834860', '1997/06/13','Sophia123' ,'Sophia Let�cia Amanda Monteiro', 1),
	  ('81365266303', '2000/02/25','Luan124' ,'Luan Oliver Benedito Peixoto', 1),
	  ('37638648064', '2000/04/09','Jorge125' ,'Jorge Raul Ribeiro', 1),
	  ('52735651541', '2000/07/05','Elza126' ,'Elza Rita Arag�o', 1),
	  ('03398157017', '2000/03/13','Jos�127' ,'Jos� Ricardo Manoel Pires', 1),
	  ('01647373247', '2000/09/05','Andr�128' ,'Andr� Marcos da Rocha', 1);

SELECT * FROM tb_aluno	

--Inserir um registro na tabela prova
INSERT INTO tb_turma_prova (id_prova, id_turma)
VALUES (1,1),
	  (2,1);

SELECT * FROM tb_turma_prova
