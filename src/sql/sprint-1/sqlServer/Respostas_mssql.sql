-- =============================================
-- Author:		Mateus Fonseca, Jonas Prado
-- Create date: 07/04/2020
-- Description:	Definição da tabela Resposta
-- =============================================

DROP TABLE IF EXISTS dbo.resposta;

CREATE TABLE dbo.resposta (
	id int IDENTITY(1,1),
	conteudo varchar(1024) NOT NULL,
	dtcriacao datetime NOT NULL DEFAULT getdate(),
	dtatualizacao datetime NOT NULL DEFAULT getdate(),
	isexcluido bit NOT NULL DEFAULT 0,
	CONSTRAINT resposta__pk PRIMARY KEY (id)
);
CREATE UNIQUE INDEX resposta__conteudo_idx ON dbo.resposta(id);   
CREATE FULLTEXT INDEX ON dbo.resposta(conteudo)
	KEY INDEX resposta__conteudo_idx
	WITH STOPLIST = SYSTEM;