--DDL EX 1.1
--Comando para criar o bd
CREATE DATABASE Exercicio_1_1;

--Comando para usar o bd
USE Exercicio_1_1;

--Comando para criar as tabelas
CREATE TABLE Pessoa
(
	IdPessoa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	CNH VARCHAR (11) NOT NULL
)

CREATE TABLE EMAIL
(
	IdEmail INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoa(IdPessoa),
	Endereco VARCHAR(50) NOT NULL
)


CREATE TABLE Telefone
(
	IdTelefone INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoa(IdPessoa),
	Numero VARCHAR (30) NOT NULL
)