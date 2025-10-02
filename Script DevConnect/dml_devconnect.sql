--DML (Data Manipulation Language)

USE db_devconnect;

INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES('Vivia Marquezine', 'Vivi', 'vmarquezine@gmail.com.br', 'Senai@134', 'https://googleimagnes');
SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao (tb_usuario, descricao, imagem_url, data_publicacao)
VALUES(1, 'Gostei disso', 'https://googlefotos', '2024/10/06');
SELECT * FROM tb_publicacao;

INSERT INTO tb_curtidas (tb_usuario,tb_publicacao)
VALUES(1, 1);
SELECT * FROM tb_curtidas;

INSERT INTO tb_comentario (id_usuario, id_publicacao, texto, data_comentario)
VALUES(1, 1, 'Porque gostou disso?', '2024/11/06');
SELECT * FROM tb_comentario;

INSERT INTO tb_seguidor (usuario_seguir, usuario_seguindo)
VALUES( 1, 'Bruna Brernasdes');
SELECT * FROM tb_seguidor;