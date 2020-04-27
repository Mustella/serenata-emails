ALTER PROCEDURE resposta_item
	@pergunta varchar(255) AS
BEGIN
	SET NOCOUNT ON
	select id, Rank/1000.0 as acertos, conteudo 
	    from FREETEXTTABLE(resposta, conteudo, @pergunta) as result
	    inner join resposta on result.[KEY] = resposta.id
	    where resposta.isexcluido = 0
	    and Rank > 0
	    order by rank DESC
END;