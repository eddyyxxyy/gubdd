-- CREATE DATABASE agregacao;

-- CREATE TABLE categorias(
--	id SERIAL PRIMARY KEY,
-- 	nome VARCHAR(60) NOT NULL
-- );

-- CREATE TABLE produtos(
--	id SERIAL PRIMARY KEY, 
--	descricao VARCHAR(60) NOT NULL,
--	preco_venda DECIMAL(8,2) NOT NULL,
--	preco_custo MONEY NOT NULL,
--	id_categoria INT REFERENCES categorias(id) NOT NULL
-- );

-- INSERT INTO categorias (nome) VALUES ('Material Escolar');
-- INSERT INTO categorias (nome) VALUES ('Acessório Informática');
-- INSERT INTO categorias (nome) VALUES ('Material Escritório');
-- INSERT INTO categorias (nome) VALUES ('Game');

-- INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caderno', 5.45, 2.30, 1);
-- INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caneta', 1.20, 0.45, 1);
-- INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Pendrive 32GB', 120.54, 32.55, 2);
-- INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Mouse', 17.00, 4.30, 2);

-- max
-- SELECT MAX(preco_venda) FROM produtos;

-- min
-- SELECT MIN(preco_venda) FROM produtos;

-- SELECT AVG(preco_custo) FROM produtos; -- não funciona
-- SELECT AVG(preco_venda) FROM produtos; -- precisão grande

-- SELECT TO_CHAR(AVG(preco_venda),'99999999D99') AS Media FROM produtos; -- Formatado para string

-- SELECT ROUND(AVG(preco_venda)::numeric,2) FROM produtos; -- Formatado para numerico

-- SELECT ROUND(AVG(preco_custo::numeric), 2) FROM produtos; -- Calculando a média de valor Money

-- SELECT ROUND(AVG(preco_venda), 4) FROM produtos;

-- count
-- SELECT COUNT(preco_venda) AS Quantidade FROM produtos WHERE id_categoria = 1;

-- group by
-- SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria;

-- having
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria HAVING MAX(preco_venda) > 10;
