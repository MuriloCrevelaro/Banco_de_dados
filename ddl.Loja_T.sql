USE Loja_T

INSERT INTO Cliente(nome)
VALUES	('Ana'),('Bruno'),('Claudio'),('Rosa'),('Lucas')
SELECT * FROM Cliente

INSERT INTO Produto(nome,preco)
VALUES ('Mouse','90.00'),('Monitor','400.00'),('Impressora','600.00'),('Teclado','150.00'), ('HeadSet', '300.00')
SELECT * FROM Produto

TRUNCATE TABLE Pedido
INSERT INTO Pedido( data_horario, id_cliente, id_produto)
VALUES ('2025-10-06 11:33:00',1,1), --Ana comprou um Mouse
	   ('2025-11-15 22:00:00',2,2), --Bruno comprou um Monitor
	   ('2025-10-07 22:00:00',3,3), --Claudio comprou um Impressora
	   ('2025-04-07 05:59:59',4,4); --Rosa comprou um Teclado
	   --O Lucas não compraram nada
	   --O HeadSet não foram vendidos
SELECT * FROM Pedido