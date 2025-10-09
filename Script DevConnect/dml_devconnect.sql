--DML (Data Manipulation Language)

USE db_devconnect;

INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES	
		('Vivia Marquezine', 'Vivi', 'vmarquezine@gmail.com.br', 'Senai@134', 'https://googleimagnes'),
		('Marquezine Cleber', 'Mark', 'mcleber@gmail.com.br', 'Senai@134', 'https://googleimagnes'),
		('Vaudir Ferreira', 'Vauvau', 'vferreira@gmail.com.br', 'Senai@134', 'https://googleimagnes'),
		('Cleiton Figueira', 'Clei', 'cfigueira@gmail.com.br', 'Senai@134', 'https://googleimagnes'),
		('Carlos Marquezine', 'Car', 'cmarquezine@gmail.com.br', 'Senai@134', 'https://googleimagnes');
		
SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao (id_usuario, descricao, imagem_url, data_publicacao)
VALUES(1, 'Para com disso', 'https://googlefotos', '2024/10/06'),
	  (3, 'Gostei disso', 'https://googlefotos', '2024/09/08'),
	  (5, 'Alguem me ajuda?!', 'https://googlefotos', '2024/11/16');
SELECT * FROM tb_publicacao;

INSERT INTO tb_curtidas (id_usuario,id_publi)
VALUES
	(1, 1),
	(3, 2),
	(5, 3);
SELECT * FROM tb_curtidas;

INSERT INTO tb_comentario (id_usuario, id_publi, texto, data_comentario)
VALUES(1, 1, 'Porque gostou disso?', '2024/11/06');
SELECT * FROM tb_comentario;

INSERT INTO tb_seguidor (id_usuario, usuario_seguindo)
VALUES( 1, 'Bruna Brernasdes');
SELECT * FROM tb_seguidor;