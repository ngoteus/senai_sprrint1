--DML-Exercicio_1_4

USE Exercicio_1_4;

INSERT INTO Artistas(NomeArtistas)
VALUES ('l7NNON')

INSERT INTO Estilos(NomeEstilos)
VALUES ('Rap')

INSERT INTO Usuario(Nome, Email, Senha, Permissao)
VALUES ('Mateus', 'mateusmouraferreira8@gmail.com', '123', 1)

INSERT INTO Albuns(IdArtistas, Titulo, DataLancamento, Localizacao, QtdMinutos, Ativo)
VALUES (1, 'HHR', '27/08/2023', 'Festa Universitaria', '50 minutos', 1)

INSERT INTO AlbunsEstilos(IdArtistas, IdEstilos)
VALUES (1, 1)

SELECT * FROM Artistas;
SELECT * FROM Estilos;
SELECT * FROM Usuario;
SELECT * FROM Albuns;
SELECT * FROM AlbunsEstilos;