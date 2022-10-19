-- UPDATE tipos_produto SET descricao = 'Laptop' WHERE id = 1;
-- UPDATE produtos SET descricao = 'Laptop Alienware', preco = 5499.99 WHERE id = 1;

-- SELECT * FROM tipos_produto ORDER BY id ASC;

-- SELECT p.id, p.descricao AS Produto, p.preco AS Preço, tp.descricao AS Tipo
-- FROM produtos AS p, tipos_produto AS tp
-- WHERE p.id_tipo_produto = tp.id
-- ORDER BY p.preco ASC;

-- DELETE FROM produtos WHERE id = 3;

-- SELECT * FROM produtos;