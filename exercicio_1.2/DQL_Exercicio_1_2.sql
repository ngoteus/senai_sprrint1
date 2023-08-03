--DQL- Exercicio_1_2

USE Exercicio_1_2;

SELECT
	Aluguel.DataRetirada,
	Aluguel.DataDevolucao,
	Aluguel.PrecoAluguel,
	Cliente.IdCliente,
	Cliente.Nome ,
	Modelo.Nome AS NomeModelo
	
FROM
	Aluguel
LEFT JOIN Cliente ON Cliente.IdCliente = Aluguel.IdCliente
LEFT JOIN Veiculo ON Veiculo.IdVeiculo = Veiculo.IdModelo
LEFT JOIN Modelo ON Modelo.IdModelo = Veiculo.IdModelo
--WHERE Cliente.IdCliente = 1;
SELECT * FROM Cliente




