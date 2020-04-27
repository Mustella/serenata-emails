--SESSAO 'SALÁRIOS E BENEFÍCIOS' em https://nossahepta.com.br/IntranetHepta/pages/artigo.html?id=123
INSERT INTO public.resposta(conteudo, tokens)
VALUES('Não sabemos quanto tempo essa crise irá durar e quais os impactos podem ocorrer no médio e longo prazo. No curto prazo, podemos afirmar que estamos confiantes de que, enquanto conseguirmos continuar entregando os serviços para os nossos clientes (e nossos clientes continuem trabalhando e entregando seus serviços ao país), com a qualidade que nos é característica, manteremos nossos contratos e nossas equipes.'
	, 'demissao;demitido;desempregado');
INSERT INTO public.resposta(conteudo, tokens)
VALUES('Esse artigo da Medida Provisória foi revogado e, como falamos, estamos trabalhando com base no formato de nossos contratos, que são baseados na sustentação da saúde operacional das infraestruturas de TI dos nossos clientes e no cumprimento de SLAs de atendimento aos seus usuários. Estamos atendendo nossos clientes de forma remota e por isso estamos confiantes que uma medida desta natureza não será necessária.'
	, 'suspensao;contrato');
INSERT INTO public.resposta(conteudo, tokens)
VALUES('Essa foi uma proposta discutida pelas autoridades para os servidores públicos. Nossos contratos são baseados na sustentação da saúde operacional e cumprimento de SLAs, logo estamos confiantes que uma medida desta natureza não será necessária.'
	, 'reducao;carga;salario;horas');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Não temos planos nesse sentido e, como os serviços de TI são considerados serviços essenciais, dentre diversos outros relevantes para que o país continue funcionando, não acreditamos que isso vá ocorrer.'
	, 'paralisacao;parar;parada');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Não temos informação suficiente para dar uma resposta agora. Como os serviços de TI foram considerados essenciais, não acreditamos que nossas atividades irão ser suspensas, logo, não acreditamos que precisaremos tomar medidas nesse sentido.'
	, 'reducao;salario;quarentena;total');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Os pagamentos a serem feitos em abril não terão nenhum impacto. Não sabemos como será o mês que vem, pois estamos aguardando para ver como nossos clientes se comportarão neste cenário. Mas reforçamos que, além dos serviços de TI serem considerados serviços essenciais, estamos trabalhando para garantir a continuidade de nosso trabalho, de nossos contratos e da adequada remuneração de todos.'
	, 'mudanca;alteracao;folha;pagamento;salario;beneficio;beneficios');

-- INSERT INTO public.resposta (conteudo, tokens)
-- VALUES(''
-- 	, '');

INSERT INTO public.resposta (conteudo, tokens)
VALUES('Não existe controle de horário (início e fim), cada empregado faz sua jornada de trabalho contanto que preencha as 6 horas ou 8 horas em trabalho remoto. Todos os colaboradores devem trabalhar em seu horário costumeiro, a não ser nos casos em que foi acertado de outra forma com sua gerência.'
	, 'carga;horaria;horario;jornada;tempo;teletrabalho;home;office');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Não teremos folha de ponto em teletrabalho. Para aqueles que porventura tenham jornada reduzida, será analisado caso a caso.'
	, 'ponto;folha;remoto;teletrabalho;home;office;jornada;reduzida');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Será possível solicitar a alteração temporária de VR (vale refeição) para VA (vale alimentação) somente na próxima compra (para o mês de maio/20), visto que as compras de abril já foram feitas. Neste momento, basta o profissional optar pelo tipo que mais lhe convém.'
	, 'mudanca;troca;alteracao;vale;refeicao;alimentacao;');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Em abril, nada muda. Para os próximos meses, não há vale-transporte para quem está em teletrabalho. Vale-Refeição/Alimentação será mantido sem alterações.'
	, 'vale;transporte;alimentacao;refeicao;desconto;reducao');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Como medida de saúde e segurança para nossos colaboradores que continuam em atividade presencial, liberamos o uso do serviço corporativo do aplicativo 99 para aqueles que antes faziam uso do transporte público. Se estiver trabalhando, depende de transporte público e ainda não tem acesso ao serviço, verifique com o seu gerente como proceder. Importante frisar que aqueles que já usavam veículo próprio devem continuar fazendo-o, tanto para aumentar o nível de isolamento como também para evitar escalada de custos neste momento de restrição.'
	, 'transporte;publico;aplicativo;uber;99;presencial;onibus;metro');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Seguindo previsões legais e recomendações das autoridades de saúde pública, a homologação dos atestados está suspensa nesse período de contingência. Mas os atestados continuam sendo necessários em caso de licença e/ou afastamento por questões médicas. Estes atestados devem ser enviados via eletrônica para a Hepta, pelo email do Departamento Pessoal, com cópia para o seu gestor.'
	, 'atestado;medico;homologar;homologacao;');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('O colaborador que estiver com sintomas – resfriado, gripe leve – e puder trabalhar, fará teletrabalho normalmente;
    Se não puder trabalhar de forma nenhuma, deverá enviar atestado por via eletrônica para a Hepta, pelo email do Departamento Pessoal, com cópia para o seu gestor.'
	, 'gripe;gripado;sintomas;resfriado');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Ainda não temos previsão de férias coletivas ou algo parecido. Nossa previsão é de manter todos os serviços por meio de atendimento realizado principalmente por meio remoto. Isso é essencial para a sustentação das estruturas de TI dos nossos clientes, que por sua vez atendem ao país todo.'
	, 'ferias;coletivas;forcadas');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Pretendemos manter as agendas como já estavam. Mas caso haja interesse em mudar as férias, este pedido deve ser feito como era antes. Cada caso será analisado.'
	, 'pedir;ferias;adiar;suspensao;suspender');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Não há prazo definido para o teletrabalho. Tudo depende do desenrolar da pandemia, das recomendações das autoridades de saúde pública e das medidas adotadas por nossos clientes.'
	, 'remoto;teletrabalho;home;office;prazo');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Infelizmente não é possível colocar todos os nossos colaboradores em teletrabalho. Em algumas situações, precisamos de pessoas em atividade presencial e contamos com a compreensão e comprometimento de nossos colaboradores.
		Pela vontade da Hepta TODOS estariam em teletrabalho, e providenciamos uma escala para redução de deslocamento/circulação.
		Com isso, fica remoto:
			1. Colaborador idoso (>60 anos) ou com alguma doença crônica (mediante atestado);
			2. Colaborador que morar com pessoa de risco.
			3. Colaborador que tiver filho até 5 anos.
			4. Gestantes'
	, 'presencial;presencialmente;remoto;teletrabalho;home;office;quem;grupo;risco');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Estamos cientes que, com os colaboradores trabalhando em casa, utilizam recursos próprios. Quanto a possibilidade de reembolso de gastos com internet e energia, por exemplo, se trata de um tema novo e estamos tratando dele. Mais informações em breve no Nossa Hepta.'
	, 'reembolso;recurso;recursos;pessoal;pessoais;despesa;gasto;remoto;teletrabalho;home;office');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Visando a prevenção dos profissionais de campo, nossa prioridade é colocar o maior número possível de colaboradores em trabalho remoto e estamos negociando com os clientes para, quando não for possível, garantir condições mínimas de segurança como: uso de equipamentos de proteção individual (EPI), distância mínima entre as pessoas, espaços arejados, política de não toque, entre outras.'
	, 'prevenção;proteção;campo;medidas');
INSERT INTO public.resposta (conteudo, tokens)
VALUES('Foi disponibilizado álcool gel para todos os colaboradores no DF, além de termos disponibilizado máscaras e luvas para uso opcional pelos colaboradores que desejarem usar. Pedimos que todos atentem para as indicações do Ministério da Saúde sobre como e quando esses equipamentos devem ser utilizados.
		Nossa equipe no IGESDF recebeu um kit completo para uso nas áreas de risco de saúde.'
	, 'EPI;mascara;mascaras;alcool');