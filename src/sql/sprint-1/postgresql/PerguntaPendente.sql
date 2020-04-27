-- =============================================
-- Author:		Mateus Fonseca, Jonas Prado
-- Create date: 07/04/2020
-- Description:	Definição da tabela PerguntaPendente
-- =============================================

CREATE TABLE public.pergunta_pendente (
	id int NOT NULL GENERATED ALWAYS AS IDENTITY,
	conteudo text NOT NULL,
	email varchar NOT NULL,
	dtcriacao timestamp NOT null default now(),
	dtresposta timestamp NULL,
	dtatualizacao timestamp NOT null default now(),
	isrespondida boolean NOT NULL DEFAULT false,
	isexcluido boolean NOT NULL DEFAULT false,
	CONSTRAINT pergunta_pendente__pk PRIMARY KEY (id)
);
COMMENT ON TABLE public.pergunta_pendente IS 'Perguntas cadastadas pelo usuário para serem respondidas posteriormente';

-- Column comments

COMMENT ON COLUMN public.pergunta_pendente.id IS 'chave primária';
COMMENT ON COLUMN public.pergunta_pendente.conteudo IS 'Conteúdo da pergunta';
COMMENT ON COLUMN public.pergunta_pendente.email IS 'email do usuário que realizou a pergunta';
COMMENT ON COLUMN public.pergunta_pendente.dtcriacao IS 'Data de criação da pergunta';
COMMENT ON COLUMN public.pergunta_pendente.dtresposta IS 'Data em que a pergunta foi respondida';
COMMENT ON COLUMN public.pergunta_pendente.dtatualizacao IS 'Data de atualização da pergunta';
COMMENT ON COLUMN public.pergunta_pendente.isrespondida IS 'Determina se a pergunta já foi respondida';
COMMENT ON COLUMN public.pergunta_pendente.isexcluido IS 'Exclusão lógica';
