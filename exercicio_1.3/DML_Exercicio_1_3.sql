--DML- Exercicio_1_3

USE Exercicio_1_3;

INSERT INTO Clinica(NomeClinica)
VALUES ('Clinica Seu Jorge')

INSERT INTO TipoDePet(NomeTipoDePet)
VALUES ('Cachorro')

INSERT INTO Raca(NomeRaca)
VALUES ('Golden Retriever')

INSERT INTO Dono(NomeDono)
VALUES ('Carlos')

INSERT INTO Endereco(IdClinica, Rua, Bairro, Numero)
VALUES (1, 'Angelo Pacola', 'Parque sao vicente', '123')

INSERT INTO Veterinario(IdClinica, NomeVeterinario)
VALUES (1, 'Eduardo')

INSERT INTO Pets(IdTipoDePet, IdDono, IdRaca, NomePet, DataDeNascimento)
VALUES (1, 1, 1, 'Rex', '27/07/2020')

INSERT INTO Atendimento(IdVeterinario, IdPets, NumeroAtendimento)
VALUES (1, 1, '22')

SELECT * FROM Clinica;
SELECT * FROM TipoDePet;
SELECT * FROM Raca;
SELECT * FROM Dono;
SELECT * FROM Endereco;
SELECT * FROM Veterinario;
SELECT * FROM Pets;
SELECT * FROM Atendimento;
