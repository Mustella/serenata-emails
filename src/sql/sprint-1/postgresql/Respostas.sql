-- =============================================
-- Author:		Mateus Fonseca, Jonas Prado
-- Create date: 07/04/2020
-- Description:	Definição da tabela Resposta
-- =============================================

CREATE TABLE public.resposta (
	id int NOT NULL GENERATED ALWAYS AS IDENTITY,
	conteudo text NOT NULL,
	tokens varchar(255) NOT NULL,
	dtcriacao timestamp NOT NULL DEFAULT now(),
	dtatualizacao timestamp NOT NULL DEFAULT now(),
	isexcluido boolean NOT NULL DEFAULT false,
	CONSTRAINT resposta__pk PRIMARY KEY (id)
);
CREATE INDEX resposta__tokens_idx ON public.resposta (tokens);
COMMENT ON TABLE public.resposta IS 'Tabela de  respostas e respectivos tokens';

-- Column comments

COMMENT ON COLUMN public.resposta.id IS 'PK';
COMMENT ON COLUMN public.resposta.conteudo IS 'Conteúdo da resposta';
COMMENT ON COLUMN public.resposta.tokens IS 'Tokens que identificam a resposta';
COMMENT ON COLUMN public.resposta.dtcriacao IS 'Data de criação da resposta';
COMMENT ON COLUMN public.resposta.dtatualizacao IS 'Data de atualização resposta';
COMMENT ON COLUMN public.resposta.isexcluido IS 'Exclusão lógica';
