--DQL Exercicio_1_3

USE Exercicio_1_3;

-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)


SELECT 
	Veterinario.NomeVeterinario, Veterinario.CRMV
FROM 
	Veterinario
WHERE Veterinario.IdClinica= 1


--listar todos os pets mostrando os nomes dos seus donos
SELECT * FROM Pets
LEFT JOIN Dono ON Dono.IdDono = Pets.IdDono


/* listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, a ra�a e o tipo do pet que foi atendido, 
o nome do dono do pet e o nome da cl�nica onde o pet foi atendido*/
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





	SELECT * FROM Veterinario
	
	




SELECT * FROM Clinica
SELECT * FROM Veterinario




	

