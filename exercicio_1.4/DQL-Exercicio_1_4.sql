--DQL  Exercicio_1_4

USE Exercicio_1_4;


-- listar todos os usu�rios administradores, sem exibir suas senhas
SELECT Usuario.Nome, Usuario.Email
FROM Usuario
WHERE Usuario.Permissao = 1

-- listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento

SELECT *
FROM Albuns
WHERE Albuns.DataLancamento >= '01-05-2023'

-- listar os dados de um usu�rio atrav�s do e-mail e senha

SELECT *
FROM Usuario
WHERE Usuario.Email = 'mateusmouraferreira8@gmail.com' AND Senha = '123';

-- listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 

SELECT *
FROM Albuns
WHERE Albuns.Ativo = 1

