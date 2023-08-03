--DML EXERCICIO 1.2

USE Exercicio_1_2;

INSERT INTO Empresa(Nome)
VALUES ('Mercedes'),
		('Honda')

INSERT INTO Cliente(Nome, CPF)
VALUES /*('Mateus', '48527217856'),*/
		('Eduardo' , '32123213211'),
		('Lucas', '4958559595'),
		('Wanderson', '15775123123')


INSERT INTO Modelo(Nome)
VALUES ('Ford Ka'),
		('Civic')

INSERT INTO Marca(Nome)
VALUES ('Ford'),
		('Honda')

INSERT INTO Veiculo(IdEmpresa, IdModelo, IdMarca, NomeVeiculo)
VALUES (1, 1, 1, 'Ford ka'),
		(1, 1, 1, 'Civic')

INSERT INTO Aluguel(IdCliente, IdVeiculo, PrecoAluguel, DataRetirada, DataDevolucao) 
VALUES 
	(1, 1, '3400', '25-05-2023', '25-08-2023'),
	(10, 6, '1500', '27-07-2023', '28-09-2023')



DELETE Aluguel
WHERE NomeCarro = 2

SELECT * FROM Empresa
SELECT * FROM Cliente
SELECT * FROM Modelo
SELECT * FROM Marca
SELECT * FROM Veiculo
SELECT * FROM Aluguel
