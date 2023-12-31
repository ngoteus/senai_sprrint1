 --DDL DATABASE DEFINITION LANGUAGE

--criar banco de dados
CREATE DATABASE [Event+ MANHA]

USE [Event+ MANHA];

CREATE TABLE TipoDeEvento
(
	IdTipoDeEvento INT PRIMARY KEY IDENTITY,
	TituloTipoEvento VARCHAR (50) NOT NULL UNIQUE

)
CREATE TABLE TipoDeUsuario
(
	IdTipoDeUsuario INT PRIMARY KEY IDENTITY,
	TituloTipoUsuario VARCHAR (20) NOT NULL UNIQUE
)
CREATE TABLE Instituicao
(	
	IdInstituicao INT PRIMARY KEY IDENTITY,
	CNPJ CHAR (14) NOT NULL UNIQUE,
	Endereco VARCHAR(100) NOT NULL,
	NomeFantasia VARCHAR (50) NOT NULL UNIQUE
)

CREATE TABLE Usuario 
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTipoDeUsuario int FOREIGN KEY REFERENCES TipoDeUsuario(IdTipoDeUsuario),
	Nome VARCHAR (50) NOT NULL,
	Email VARCHAR (256) NOT NULL UNIQUE,
	Senha VARCHAR (100) NOT NULL 
)

CREATE TABLE Evento
(
	IdEvento INT PRIMARY KEY IDENTITY,
	IdInstituicao INT FOREIGN KEY REFERENCES Instituicao(IdInstituicao),
	IdTipoDeEvento INT FOREIGN KEY REFERENCES TipoDeEvento(IdTipoDeEvento), 
	NomeEvento VARCHAR(50) NOT NULL ,
	Descricao VARCHAR(100) NOT NULL,
	DataEvento DATE NOT NULL,
	HorarioEvento TIME NOT NULL 

)
CREATE TABLE PresencaEventos
(
	IdPresecaEventos INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
	Situacao BIT DEFAULT (0)
)
CREATE TABLE Comentario
(
	IdComentario INT PRIMARY KEY IDENTITY,
	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	Descricao VARCHAR(256) NOT NULL,
	Exibe BIT DEFAULT(0)
)
--criar tabelas

