--DDL (Data Definition Language)

CREATE DATABASE db_devconnect

CREATE TABLE tb_usuario(
	id				 INT IDENTITY(1,1)		PRIMARY KEY,
	nome_completo	 NVARCHAR(255)			NOT NULL,
	nome_usuario	 NVARCHAR(60)			UNIQUE		NOT NULL,
	email			 NVARCHAR(255)			UNIQUE		NOT NULL,
	senha			 NVARCHAR(30)			NOT NULL,
	foto_perfil_url  NVARCHAR(175) NULL
);
SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao(
	id		   INT IDENTITY(1,1)		PRIMARY KEY,
	tb_usuario INT FOREIGN KEY REFERENCES tb_usuario(id),
	descricao NVARCHAR(255),
	imagem_url  NVARCHAR(175) NULL,
	data_publicacao DATE NOT NULL
);
SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtidas(
	tb_usuario		INT FOREIGN KEY REFERENCES tb_usuario(id),
	tb_publicacao	INT FOREIGN KEY REFERENCES tb_publicacao(id)
);
SELECT * FROM tb_curtidas;

CREATE TABLE tb_comentario(
	id				INT IDENTITY(1,1) PRIMARY KEY,
	id_usuario		INT FOREIGN KEY REFERENCES tb_usuario(id),
	id_publicacao	INT FOREIGN KEY REFERENCES tb_publicacao(id),
	texto			NVARCHAR(400),
	data_comentario DATE NOT NULL
);
SELECT * FROM tb_comentario;

CREATE TABLE tb_seguidor(
	usuario_seguir	 INT FOREIGN KEY REFERENCES tb_usuario(id),
	usuario_seguindo NVARCHAR(60)
);
SELECT * FROM tb_seguidor;