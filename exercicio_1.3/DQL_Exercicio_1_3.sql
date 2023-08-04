--DQL Exercicio_1_3

USE Exercicio_1_3;

-- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)


SELECT 
	Veterinario.NomeVeterinario, Veterinario.CRMV
FROM 
	Veterinario
WHERE Veterinario.IdClinica= 1

SELECT * FROM Pets
LEFT JOIN Dono ON Dono.IdDono = Pets.IdDono

SELECT 
	Atendimento.IdAtendimento AS NumeroAtendimento,
	Dono.NomeDono AS NomeDono,
	Pets.NomePet,
	Pets.IdTipoDePet,
	Pets.IdRaca, 
	Veterinario.NomeVeterinario,
	Clinica.NomeClinica

FROM
	Atendimento
LEFT JOIN Veterinario
	ON Veterinario.IdVeterinario = Atendimento.IdVeterinario
LEFT JOIN Pets
	ON Pets.IdPets = Atendimento.IdPets
LEFT JOIN Dono
	ON Dono.IdDono = Pets.IdDono
LEFT JOIN Clinica
	ON Clinica.IdClinica = Veterinario.IdClinica

	
	




SELECT * FROM Clinica
SELECT * FROM Veterinario




	

