-- ALTER
ALTER TABLE tipos_produto ADD peso REAL;

-- Verificando se foi adicionada coluna criada com o comando acima
SELECT * FROM tipos_produto;

-- DROP
-- DROP TABLE tipos_produto;  -- Dará erro
-- Quando existe um vínculo com a tabela produtos, dará erro dar DROP na
-- tabela tipos_produto.

-- Não há comando DROP DATABASE no sqlite, o jeito é deletar o arquivo .db