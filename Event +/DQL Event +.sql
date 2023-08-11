--DQL Event +

USE [Event+ MANHA];

SELECT
	Usuario.Nome,
	TipoDeUsuario.TituloTipoUsuario,
	Evento.DataEvento,
	Instituicao.Endereco,
	TipoDeEvento.TituloTipoEvento,
	Evento.NomeEvento,
	Evento.Descricao,
	CASE WHEN PresencaEventos.Situacao = 1 THEN 'Confirmada' ELSE 'Nao Confirmada' END AS [Situação],
	Comentario.Descricao

FROM
	Usuario
LEFT JOIN 
	TipoDeUsuario ON Usuario.IdTipoDeUsuario = TipoDeUsuario.IdTipoDeUsuario
LEFT JOIN
	PresencaEventos ON Usuario.IdUsuario = PresencaEventos.IdUsuario
LEFT JOIN 
	Evento ON PresencaEventos.IdEvento = Evento.IdEvento
LEFT JOIN 
	TipoDeEvento ON Evento.IdTipoDeEvento = TipoDeEvento.IdTipoDeEvento
LEFT JOIN 
	Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
LEFT JOIN
	Comentario ON Usuario.IdUsuario = Comentario.IdUsuario




