--DDL (Data Definition Language)

CREATE DATABASE db_devconnect

CREATE TABLE tb_usuario(
	id_usuario		 INT IDENTITY(1,1)		PRIMARY KEY,
	nome_completo	 NVARCHAR(255)			NOT NULL,
	nome_usuario	 NVARCHAR(60)			UNIQUE		NOT NULL,
	email			 NVARCHAR(255)			UNIQUE		NOT NULL,
	senha			 NVARCHAR(30)			NOT NULL,
	foto_perfil_url  NVARCHAR(175) NULL
);
SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao(
	id_publi   INT IDENTITY(1,1)		PRIMARY KEY,
	id_usuario INT FOREIGN KEY REFERENCES tb_usuario(id_usuario),
	descricao NVARCHAR(255),
	imagem_url  NVARCHAR(175) NULL,
	data_publicacao DATE NOT NULL
);
SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtidas(
	id_curtida	    INT IDENTITY(1,1)		PRIMARY KEY,
	id_usuario		INT FOREIGN KEY REFERENCES tb_usuario(id_usuario),
	id_publi	INT FOREIGN KEY REFERENCES tb_publicacao(id_publi)
);
SELECT * FROM tb_curtidas;

CREATE TABLE tb_comentario(
	id_coment		INT IDENTITY(1,1) PRIMARY KEY,
	id_usuario		INT FOREIGN KEY REFERENCES tb_usuario(id_usuario),
	id_publi	INT FOREIGN KEY REFERENCES tb_publicacao(id_publi),
	texto			NVARCHAR(400),
	data_comentario DATE NOT NULL
);
SELECT * FROM tb_comentario;

CREATE TABLE tb_seguidor(
	id_usuario	 INT FOREIGN KEY REFERENCES tb_usuario(id_usuario),
	usuario_seguindo NVARCHAR(60)
	PRIMARY KEY (usuario_seguindo,id_usuario)
);
SELECT * FROM tb_seguidor;

