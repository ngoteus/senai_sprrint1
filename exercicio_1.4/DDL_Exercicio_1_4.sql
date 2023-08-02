--DDL-Exercicio_1_4
CREATE DATABASE Exercicio_1_4;

USE Exercicio_1_4;

CREATE TABLE Artistas
(
	IdArtistas INT PRIMARY KEY IDENTITY,
	NomeArtistas VARCHAR(50)
)
CREATE TABLE Estilos
(
	IdEstilos INT PRIMARY KEY IDENTITY,
	NomeEstilos VARCHAR(30)
)
CREATE TABLE Usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50),
	Email VARCHAR(30),
	Senha VARCHAR(30),
	Permissao BIT
)
CREATE TABLE Albuns
(
	IdAlbum INT PRIMARY KEY IDENTITY,
	IdArtistas INT FOREIGN KEY REFERENCES Artistas(IdArtistas),
	Titulo VARCHAR(20),
	DataLancamento VARCHAR(30),
	Localizacao VARCHAR(30),
	QtdMinutos VARCHAR(30),
	Ativo BIT
)
CREATE TABLE AlbunsEstilos
(
	IdArtistas INT FOREIGN KEY REFERENCES Artistas(IdArtistas),
	IdEstilos INT FOREIGN KEY REFERENCES Estilos(IdEstilos)
)
