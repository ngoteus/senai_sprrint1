--DDL HealthClinic

CREATE DATABASE HealthClinic;

USE HealthClinic;

CREATE TABLE Especialidade
(
	IdEspecialidade INT PRIMARY KEY IDENTITY,
	TipoDeEspecialidade VARCHAR(50) NOT NULL
)

CREATE TABLE Clinica
(
	IdClinica INT PRIMARY KEY IDENTITY,
	NomeFantasia VARCHAR(50),
	RazaoSocial VARCHAR (50),
	Endereco VARCHAR(50),
	CNPJ VARCHAR (14)
)
CREATE TABLE TipoDeUsuario
(
	IdTipoDeUsuario INT PRIMARY KEY IDENTITY,
	TituloTipoDeUsuario VARCHAR (30) NOT NULL UNIQUE
)
CREATE TABLE Usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTipoDeUsuario INT FOREIGN KEY REFERENCES TipoDeUsuario(IdTipoDeUsuario),
	Email VARCHAR(50),
	Senha VARCHAR(30)
)
CREATE TABLE Medico
(
	IdMedico INT PRIMARY KEY IDENTITY,
	IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade(IdEspecialidade),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),
	NomeMedico VARCHAR(50),
	CRM VARCHAR(50)
)
CREATE TABLE Paciente
(
	IdPaciente INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	NomePaciente VARCHAR(50) NOT NULL,
	DataNascimento VARCHAR(30) NOT NULL,
	CPF VARCHAR(11) NOT NULL UNIQUE,
	Telefone VARCHAR(11) NOT NULL UNIQUE
)

CREATE TABLE Consulta
(
	IdConsulta INT PRIMARY KEY IDENTITY,
	IdMedico INT FOREIGN KEY REFERENCES Medico(IdMedico),
	IdPaciente INT FOREIGN KEY REFERENCES Paciente(IdPaciente),
	DataConsulta DATE,
	HorarioConsulta DATETIME

)
CREATE TABLE Comentario
(
	IdComentario INT PRIMARY KEY IDENTITY,
	IdPaciente INT FOREIGN KEY REFERENCES Paciente(IdPaciente),
	IdConsulta INT FOREIGN KEY REFERENCES Consulta(IdConsulta),
	TitutloComentario VARCHAR(50),
	Descricao VARCHAR(30)
)