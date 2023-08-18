--DQL HealthClinic

USE HealthClinic;

SELECT
	Consulta.IdConsulta,
	Consulta.DataConsulta AS [Calendario da consulta],
	Consulta.HorarioConsulta AS [Horario da consulta],
	Clinica.NomeFantasia AS [Nome da Clinica],
	Paciente.NomePaciente AS [Paciente],
	Medico.NomeMedico AS [Nome do medico],
	Especialidade.TipoDeEspecialidade AS [Especialidade],
	Medico.CRM AS [CRM do medico],
	Consulta.Prontuario AS [Prontuario],
	Comentario.Descricao AS [Feedback]

FROM
	Consulta
JOIN
	Clinica ON Clinica.IdClinica = Clinica.IdClinica
JOIN
	Medico ON Medico.IdClinica = Medico.IdClinica
JOIN 
	Paciente ON Consulta.IdPaciente = Paciente.IdPaciente
JOIN
	Comentario ON Comentario.IdComentario = Comentario.IdComentario
JOIN
	Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade
	












SELECT * FROM Especialidade
SELECT * FROM Clinica
SELECT * FROM TipoDeUsuario
SELECT * FROM Usuario
SELECT * FROM Medico
SELECT * FROM Paciente
SELECT * FROM Consulta
SELECT * FROM Comentario