-- CREATE DATABASE agrupamento;

-- CREATE TABLE tipos(
--	id SERIAL PRIMARY KEY,
--	nome VARCHAR(60) NOT NULL
-- );

-- CREATE TABLE fabricantes(
--	id SERIAL PRIMARY KEY,
--	nome VARCHAR(60) NOT NULL
-- );

-- CREATE TABLE produtos(
--	id SERIAL PRIMARY KEY, 
--	nome VARCHAR(60) NOT NULL,
--	id_fabricante INT REFERENCES fabricantes(id) NOT NULL,
--	quantidade INT NOT NULL,
--	id_tipo INT REFERENCES tipos(id) NOT NULL
-- );

-- INSERT INTO tipos (nome) VALUES ('Console');
-- INSERT INTO tipos (nome) VALUES ('Notebook');
-- INSERT INTO tipos (nome) VALUES ('Celular');
-- INSERT INTO tipos (nome) VALUES ('Smartphone');
-- INSERT INTO tipos (nome) VALUES ('Sofá');
-- INSERT INTO tipos (nome) VALUES ('Armário');
-- INSERT INTO tipos (nome) VALUES ('Refrigerador');

-- INSERT INTO fabricantes (nome) VALUES ('Sony');
-- INSERT INTO fabricantes (nome) VALUES ('Dell');
-- INSERT INTO fabricantes (nome) VALUES ('Microsoft');
-- INSERT INTO fabricantes (nome) VALUES ('Samsung');
-- INSERT INTO fabricantes (nome) VALUES ('Apple');
-- INSERT INTO fabricantes (nome) VALUES ('Beline');
-- INSERT INTO fabricantes (nome) VALUES ('Magno');
-- INSERT INTO fabricantes (nome) VALUES ('CCE');
-- INSERT INTO fabricantes (nome) VALUES ('Nintendo');

-- INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Playstation 3', 1, 100, 1);
-- INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Core 2 Duo 4GB RAM 500GB HD', 2, 200, 2);
-- INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Xbox 360 120GB', 3, 350, 1);
-- INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('GT-I6220 Quad band', 4, 300, 3);
-- INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('iPhone 4 32GB', 5, 50, 4);
-- INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Playstation 2', 1, 100, 1);
-- INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Sofá Estofado', 6, 200, 5);
-- INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Armário de Serviço', 7, 50, 6);
-- INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Refrigerador 420L', 8, 200, 7);
-- INSERT INTO produtos (nome, id_fabricante, quantidade, id_tipo) VALUES ('Wii 120GB', 8, 250, 1);


-- Group By
-- SELECT t.nome AS Tipo, f.nome AS Fabricante, SUM(p.quantidade) AS Quantidade_em_Estoque 
--	FROM tipos AS t, fabricantes AS f, produtos AS p 
--    	WHERE t.id = p.id_tipo AND f.id = p.id_fabricante 
--    	GROUP BY t.nome, f.nome;

-- Having
-- SELECT t.nome AS Tipo, f.nome AS Fabricante, SUM(p.quantidade) AS Quantidade_em_Estoque 
--	FROM tipos AS t, fabricantes AS f, produtos AS p 
--    	WHERE t.id = p.id_tipo AND f.id = p.id_fabricante 
--    	GROUP BY t.nome, f.nome
--    	HAVING SUM(p.quantidade) > 200;
		
-- Order By ASC
SELECT id, nome, id_fabricante, quantidade, id_tipo FROM produtos ORDER BY id DESC LIMIT 3;

-- SELECT id, nome, id_tipo, id_fabricante, quantidade  FROM produtos ORDER BY id ASC;

-- Order by DESC
-- SELECT id, nome, id_tipo, id_fabricante, quantidade FROM produtos ORDER BY quantidade DESC LIMIT 5;