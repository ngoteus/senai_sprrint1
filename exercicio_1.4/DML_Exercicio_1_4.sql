--DML-Exercicio_1_4

USE Exercicio_1_4;

INSERT INTO Artistas(NomeArtistas)
VALUES ('l7NNON'),
		('Major RD')

INSERT INTO Estilos(NomeEstilos)
VALUES ('Rap'),
		('Trap')

INSERT INTO Usuario(Nome, Email, Senha, Permissao)
VALUES ('Mateus', 'mateusmouraferreira8@gmail.com', '123', 1),
		('Marcos', 'marcos@gmail.com', '321', 1),
		('Gustavo', 'gustavo@gmail.com', '333', 0)

INSERT INTO Albuns(IdArtistas, Titulo, DataLancamento, Localizacao, QtdMinutos, Ativo)
VALUES (1, 'HHR', '27-08-2023', 'Festa Universitaria', '50 minutos', 0),
		(2, 'Rap', '28-04-2023', 'Roof', '43 Minutos', 1)

INSERT INTO AlbunsEstilos(IdArtistas, IdEstilos)
VALUES (1, 1),
		(2, 2)

SELECT * FROM Artistas;
SELECT * FROM Estilos;
SELECT * FROM Usuario;
SELECT * FROM Albuns;
SELECT * FROM AlbunsEstilos;