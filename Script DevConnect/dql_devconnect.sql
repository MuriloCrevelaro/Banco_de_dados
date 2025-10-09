--DQL(Data Query Language)

USE db_devconnect

--Exibir todos os nomes dos seguidores(de quem esta seguindo e de quem sera seguido)
SELECT 
	SD.nome_completo AS Seguidor,
	SN.nome_completo AS Seguindo 
FROM tb_seguidor S
INNER JOIN tb_usuario SD ON S.id_usuario = SD.id_usuario
INNER JOIN tb_usuario SN ON S.id_usuario = SN.id_usuario

--Exiba quantos seguidores tem um usuário
SELECT COUNT(periodo)
FROM tb_turma
WHERE periodo = 'Tarde'

--Exiba todas as publicações contendo a descrição, o caminho da imagem, o nome de usuário
SELECT tb_publicacao.descricao
FROM 

--Exiba todos os comentarios com o nome e o texto de uma respectiva publicação

--Exiba a quantidade de curtidas de uma respectiva publicação

--Exiba todos usuários que não fizeram publicação

--Exiba todos usuários que não fizeram reação
SELECT