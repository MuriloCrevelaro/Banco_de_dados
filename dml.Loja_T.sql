CREATE DATABASE Loja_T

USE Loja_T

CREATE TABLE Cliente(
	id_cliente INT IDENTITY(1,1) PRIMARY KEY,
	nome NVARCHAR (255) NOT NULL
);
SELECT * FROM Cliente;

CREATE TABLE Produto(
	id_produto INT IDENTITY(1,1) PRIMARY KEY,
	nome NVARCHAR(100) NOT NULL UNIQUE,
	preco DECIMAL(6,2) NOT NULL
);
SELECT * FROM Produto;

CREATE TABLE Pedido(
	id INT IDENTITY(1,1) PRIMARY KEY,
	data_horario DATETIME2 NOT NULL,
	id_cliente	INT NOT NULL,
	id_produto  INT NOT NULL,
	FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente),
	FOREIGN KEY(id_produto) REFERENCES Produto (id_produto)
);
SELECT * FROM Pedido;