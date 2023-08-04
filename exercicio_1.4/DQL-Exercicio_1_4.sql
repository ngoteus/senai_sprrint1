--DQL  Exercicio_1_4

USE Exercicio_1_4;


-- listar todos os usuários administradores, sem exibir suas senhas
SELECT Usuario.Nome, Usuario.Email
FROM Usuario
WHERE Usuario.Permissao = 1

-- listar todos os álbuns lançados após o um determinado ano de lançamento

SELECT *
FROM Albuns
WHERE Albuns.DataLancamento >= '01-05-2023'

-- listar os dados de um usuário através do e-mail e senha

SELECT *
FROM Usuario
WHERE Usuario.Email = 'mateusmouraferreira8@gmail.com' AND Senha = '123';

-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 

SELECT *
FROM Albuns
WHERE Albuns.Ativo = 1

