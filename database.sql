create database trabalho;

USE trabalho;

CREATE TABLE cliente(
    clienteID INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    dataNascimento DATE,
    cidade VARCHAR(50)
);

CREATE TABLE produtos(
    produtoID INT AUTO_INCREMENT PRIMARY KEY,
    nomeProduto VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT
);

CREATE TABLE pedidos(
    pedidoID INT AUTO_INCREMENT PRIMARY KEY,
    clienteID INT,
    dataPedido DATE,
    valorTotal DECIMAL(10,2),
    FOREIGN KEY (clienteID) REFERENCES cliente(clienteID)
);

CREATE TABLE itensPedido(
    itemID INT AUTO_INCREMENT PRIMARY KEY,
    pedidoID INT,
    produtoID INT,
    quantidade INT,
    precoUnitario DECIMAL(10,2),
    FOREIGN KEY (pedidoID) REFERENCES pedidos(pedidoID),
    FOREIGN KEY (produtoID) REFERENCES produtos(produtoID)
);
