--DML HealthClinic

USE HealthClinic;

INSERT INTO Especialidade (TipoDeEspecialidade)
VALUES ('Pediatra'),
		('Clinico geral')

INSERT INTO Clinica (NomeFantasia, Endereco, RazaoSocial, CNPJ)
VALUES ('Health Clinic', 'Parque Sao Vicente, Rua angelo pacola, 122', 'Clinica Sao Goncalo','33012312312312')
		

INSERT INTO TipoDeUsuario (TitutloTipoDeUsuario)
VALUES ('Administrador'),
		('Medico'),
		('Paciente')

INSERT INTO Usuario (IdTipoDeUsuario, Email, Senha)
VALUES (1, 'carlos@admin.com', '123'),
		(2, 'edu@medico.com', '321'),
		(2, 'mauricio@medico.com', '777'),
		(3, 'juscelino@paciente.com', '313'),
		(3, 'lucas@paciente.com', '444')

INSERT INTO Medico (IdEspecialidade, IdUsuario, IdClinica, NomeMedico, CRM)
VARCHAR (1, 2, 1, 'Doutor Eduardo' 'SP123123'),
		(2, 3, 1, 'Doutor Mauricio', 'RJ321321')

INSERT INTO Paciente (IdUsuario, NomePaciente, DataNascimento, CPF, Telefone)
VALUES(4, 'Juscelino', '27-07-2005', '48527217856', '11950198828'),
		(5, 'lucas', '22-10-2001', '44444444412', '11909090921')

INSERT INTO Consulta (IdMedico, IdPaciente, DataConsulta, HorarioConsulta)
VALUES (1, 1, '28-08-2023', '10:30:00'),
		(2, 2, '25-10-2023', '15:00:00')

INSERT INTO Comentario (IdPaciente, IdConsulta, TitutloComentario, Descricao)
VALUES (1, 1, 'Consulta Doutor Eduardo', 'Consulta otima, resolveu todos meus problemas.'),
		(2, 2, 'Consulta Doutor Mauricio', 'Consulta deixou a desejar.')

SELECT * FROM Especialidade
SELECT * FROM Clinica
SELECT * FROM TipoDeUsuario
SELECT * FROM Usuario
SELECT * FROM Medico
SELECT * FROM Paciente
SELECT * FROM Consulta
SELECT * FROM Comentario