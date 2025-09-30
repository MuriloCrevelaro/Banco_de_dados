--Este comando cria um novo banco de dados
CREATE DATABASE db_escola_T;
GO

--Esse comentario usa o BD
USE db_escola_T;
GO


--Este comando cria uma nova tabela
/*CREATE TABLE tb_escola(
	id			INT IDENTITY(1, 1) PRIMARY KEY,
	nome		NVARCHAR(255) NOT NULL,
	endereco	NVARCHAR(255) NOT NULL,
);
GO*/

--DQL realiza consultas nas tabelas de um respectivo banco
SELECT * FROM tb_escola;
GO


--TABELA TURMA
/*CREATE TABLE tb_turma(
	id			 INT			IDENTITY(1, 1)  PRIMARY KEY,
	serie		 INT			UNIQUE		    NOT NULL,
	periodo		 NCHAR(5)		UNIQUE			NOT NULL,
	numero_sala  TINYINT		NOT NULL,
	nome_turma	 NVARCHAR(100)	NOT NULL,	
);
GO*/

SELECT * FROM tb_turma;
GO


--TABELA ALUNO
/*CREATE TABLE tb_prova(
	id				INT			    IDENTITY(1,1) PRIMARY KEY,
	nome_professor  NVARCHAR(255)   NOT NULL,
	materia			NVARCHAR(255)   NOT NULL,
	duracao			TIME		    NOT NULL,
	nota			DECIMAL(3, 1)	NOT NULL,
	data_prova		DATE			NOT NULL,
);
GO*/

SELECT * FROM tb_prova;
GO


--TABELA ALUNO
/*CREATE TABLE tb_aluno(
	id			INT IDENTITY(1,1) PRIMARY KEY,
	nome		NVARCHAR(255)	  NOT NULL,
	cpf			NCHAR(11)		  UNIQUE		NOT NULL,
	matricula	NVARCHAR(10)	  UNIQUE		NOT NULL,
	data_nasc	DATE			  NOT NULL,

	id_escola	INT FOREIGN KEY	  REFERENCES	tb_escola(id)	NOT NULL,
);
GO*/

SELECT * FROM tb_aluno;
GO


--TABELA INTERMEDIARIA TURMAPROVA
/*CREATE TABLE tb_turma_prova(
	id_prova	INT		NOT NULL,
	id_turma	INT		NOT NULL,

	PRIMARY KEY(id_turma, id_prova)
);
GO*/

SELECT * FROM tb_turma_prova
GO