--DQL Exemplos

USE Exercicio_1_1;

SELECT 
	Pessoa.IdPessoa AS ID,
	Pessoa.Nome AS Cliente,
	Pessoa.CNH,
	Telefone.Numero AS COMPRA,
	EMAIL.Endereco AS Email
FROM
	Pessoa
LEFT JOIN
	Telefone ON Pessoa.IdPessoa = Telefone.IdPessoa
LEFT JOIN 
	email ON Pessoa.IdPessoa = Email.IdPessoa

WHERE Telefone.Numero IS NULL

SELECT * FROM Pessoa