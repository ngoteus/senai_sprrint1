--DML EX 1.1
USE Exercicio_1_1;

--comando para inserir dados na tabela
INSERT INTO Pessoa(Nome, CNH)
VALUES /*('Carlos', '11122233345'),*/
		('Eduardo', '321321321'),
		('Wender','12332112'),
		('Wanderson', '888777666')

INSERT INTO EMAIL(IdPessoa, Endereco)
VALUES (1,'carlos@email.com')

INSERT INTO Telefone(IdPessoa, Numero)
VALUES (1, '11909898989')

--Para consultar as tabelas
SELECT * FROM Pessoa
SELECT * FROM EMAIL
SELECT * FROM Telefone
