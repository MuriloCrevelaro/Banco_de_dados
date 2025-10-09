USE Loja_T

--Traga os nomes dos cliente, preço do produto e a data do pedido (Com a data sendo no estilo do Brasil)
SELECT FORMAT(data_horario, 'dd-MM-yyyy hh:MM:ss') AS Data_horario,
	Cliente.nome AS 'Nome do Cliente', 
	Produto.preco AS 'Preço do Produto',
	Produto.nome AS 'Nome do Produto'
FROM Pedido
INNER JOIN Cliente ON Pedido.id_cliente = Cliente.id_cliente
INNER JOIN Produto ON Pedido.id_produto = Produto.id_produto


--Traga todos os nomes dos usuarios contendo ou não pedido(nome e preço)
--Depois do FROM é a tabela ESQUERDA(LEFT)
SELECT 
	C.nome,
	P.id_produto
FROM Cliente C
LEFT JOIN Pedido P ON C.id_cliente = P.id_cliente;

--Exiba somente cliente que não fizeram pedidos
SELECT 
	C.nome,
	PD.id_produto
FROM Cliente C
LEFT JOIN Pedido PD ON C.id_cliente = PD.id_cliente
WHERE PD.id_produto IS NULL;


--Exibir nomes dos produtos que não estão em algum pedido
SELECT 
	P.nome,
	PD.id_produto AS 'Nome do Produto'
FROM Produto P
LEFT JOIN Pedido PD ON P.id_produto = PD.id_produto
WHERE PD.id_produto IS NULL;

--Exibir todas as datas e horarios dos pedidos e também os nomes dos cliente
SELECT	
	Pedido.data_horario,
	Cliente.nome
FROM Pedido --Tabela esquerda que vira direita
RIGHT JOIN Cliente ON Pedido.id_cliente = Cliente.id_cliente
--Tabela direita que vira esquerda

--FULL
SELECT
	C.nome,
	P.nome,
	Pedido.data_horario
FROM Cliente C
FULL JOIN Pedido  ON Pedido.id_cliente = C.id_cliente
FULL JOIN Produto P ON Pedido.id_produto = P.id_produto;

--Exiba somente cliente que fizeram pedidos(filtrando os meses)
SELECT 
	C.nome,
	PD.id_produto
FROM Cliente C
LEFT JOIN Pedido PD ON C.id_cliente = PD.id_cliente
WHERE MONTH(PD.data_horario ) = 4;--Exibir todos que compreram no mês 4

					--OU
SELECT 
	C.nome,
	PD.id_produto
FROM Cliente C
LEFT JOIN Pedido PD ON C.id_cliente = PD.id_cliente
WHERE MONTH(PD.data_horario ) != 4;--Exibir todos que não compreram no mês 4