--DML Event+

USE [Event+ MANHA]

--Inserir dados nas tabelas

INSERT INTO TipoDeUsuario (TituloTipoUsuario)
VALUES ('Administrador'), ('Comum')

INSERT INTO TipoDeEvento(TituloTipoEvento)
VALUES ('SQL Server')

INSERT INTO Instituicao(CNPJ, Endereco, NomeFantasia)
VALUES ('12345678901234', 'Rua Niteroi 180', 'DevSchool')

INSERT INTO Usuario(IdTipoDeUsuario, Nome, Email, Senha)
VALUES (1,'Carlos','admin@admin.com','admin1234')

INSERT INTO Evento(IdTipoDeEvento, IdInstituicao, NomeEvento, Descricao, DataEvento, HorarioEvento)
VALUES (1, 1, 'Introducao Banco De Dados SQL Server', 'Conceitos Basicos do SQL Server', '2023-08-10', '10:00:00')

INSERT INTO PresencaEventos(IdUsuario, IdEvento)
VALUES (1, 1)

INSERT INTO Comentario(IdUsuario, IdEvento, Descricao, Exibe)
VALUES (1, 1, 'Excelente Talento, professores top!', 1)

SELECT * FROM TipoDeUsuario
SELECT * FROM TipoDeEvento
SELECT * FROM Instituicao
SELECT * FROM Usuario
SELECT * FROM Evento
SELECT * FROM PresencaEventos
SELECT * FROM Comentario