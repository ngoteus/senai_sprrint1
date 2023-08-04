--DML- Exercicio_1_3

USE Exercicio_1_3;

INSERT INTO Clinica(NomeClinica)
VALUES ('Clinica Seu Jorge'),
		('Clinica Seu ze')

INSERT INTO TipoDePet(NomeTipoDePet)
VALUES ('Cachorro'),
		('Gato')

INSERT INTO Raca(NomeRaca)
VALUES ('Golden Retriever'),
		('Persa')

INSERT INTO Dono(NomeDono)
VALUES ('Carlos'),
		('Eduardo')

INSERT INTO Endereco(IdClinica, Rua, Bairro, Numero)
VALUES (1, 'Angelo Pacola', 'Parque sao vicente', '123'),
		(1, 'Jose moreto', 'Jardim botanico', '323')

INSERT INTO Veterinario(IdClinica, NomeVeterinario, CRMV)
VALUES (1, 'Eduardo', '12312312312'),
		(1, 'Carlos', '32323232323')

INSERT INTO Pets(IdTipoDePet, IdDono, IdRaca, NomePet, DataDeNascimento)
VALUES (1, 1, 1, 'Rex', '27/07/2020'),
		(2, 2, 2, 2, '25/05/2023')

INSERT INTO Atendimento(IdVeterinario, IdPets, NumeroAtendimento)
VALUES (1, 1, '22'),
		(1, 2, '23')

SELECT * FROM Clinica;
SELECT * FROM TipoDePet;
SELECT * FROM Raca;
SELECT * FROM Dono;
SELECT * FROM Endereco;
SELECT * FROM Veterinario;
SELECT * FROM Pets;
SELECT * FROM Atendimento;
