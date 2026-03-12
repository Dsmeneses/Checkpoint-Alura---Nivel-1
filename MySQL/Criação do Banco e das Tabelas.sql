CREATE DATABASE zoop_megastore;

USE zoop_megastore;

CREATE TABLE Clientes(
	Id_cliente INT NOT NULL PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Estado VARCHAR(5) NOT NULL,
    Plano_Assinatura VARCHAR(10)
);

CREATE TABLE Vendas(
	Id_venda INT NOT NULL PRIMARY KEY,
    Data_venda DATE NOT NULL,
    Id_cliente INT NOT NULL,
    Id_Produto INT NOT NULL,
    Produto VARCHAR(255) NOT NULL,
    Categoria VARCHAR(100) NOT NULL,
    Valor_Venda DOUBLE NOT NULL,
    Quantidade INT NOT NULL,
    FOREIGN KEY (Id_cliente) REFERENCES Clientes(Id_cliente)

);

SELECT * FROM Clientes;

SELECT * FROM Vendas;