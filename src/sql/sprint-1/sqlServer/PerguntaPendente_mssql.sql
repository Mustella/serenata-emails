-- =============================================
-- Author:		Mateus Fonseca, Jonas Prado
-- Create date: 07/04/2020
-- Description:	Definição da tabela PerguntaPendente
-- =============================================

CREATE TABLE dbo.pergunta_pendente (
	id int IDENTITY(1,1),
	conteudo text NOT NULL,
	email varchar(255) NOT NULL,
	dtcriacao datetime NOT null default getdate(),
	dtresposta datetime NULL,
	dtatualizacao datetime NOT null default getdate(),
	isrespondida bit NOT NULL DEFAULT 0,
	isexcluido bit NOT NULL DEFAULT 0,
	CONSTRAINT pergunta_pendente__pk PRIMARY KEY (id)
);
