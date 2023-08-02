USE Exercicio_1_1;

SELECT PESSOA.Nome, 
Pessoa.CNH, 
EMAIL.Endereco AS EMAIL, 
Telefone.Numero AS TELEFONE 

FROM 
Pessoa, 
Email, 
Telefone 
WHERE
Pessoa.IdPessoa= Email.IdPessoa
AND PESSOA.IdPessoa = Telefone.IdPessoa


SELECT * FROM PESSOA;
SELECT * FROM EMAIL;
SELECT * FROM TELEFONE;