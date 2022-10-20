-- SELECT * FROM tipos_produto;
-- SELECT * FROM produtos;

SELECT p.id AS "Id", p.descricao AS "Produto", p.preco AS "Preço", tp.descricao AS "Categoria"
	FROM produtos AS p, tipos_produto AS tp
	WHERE p.id_tipo_produto = tp.id;