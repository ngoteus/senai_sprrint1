--DML EXERCICIO 1.2

USE Exercicio_1_2;

INSERT INTO Empresa(Nome)
VALUES ('Mercedes')

INSERT INTO Cliente(Nome,CPF)
VALUES ('Mateus', '48527217856')

INSERT INTO Modelo(Nome)
VALUES ('Ford Ka')

INSERT INTO Marca(Nome)
VALUES ('Ford')

INSERT INTO Veiculo(IdEmpresa, IdModelo, IdMarca, NomeVeiculo)
VALUES (1, 1, 1, 'Ford ka')

INSERT INTO Aluguel(IdCliente, IdVeiculo, PrecoAluguel)
VALUES (1, 1, '2500')





SELECT * FROM Empresa
SELECT * FROM Cliente
SELECT * FROM Modelo
SELECT * FROM Marca
SELECT * FROM Veiculo
SELECT * FROM Aluguel
