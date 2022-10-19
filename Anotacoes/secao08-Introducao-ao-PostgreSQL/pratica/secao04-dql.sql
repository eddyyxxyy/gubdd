-- CREATE DATABASE secao04;

-- USE não funciona no PostgreSQL (funciona no MySQL)

-- CREATE TABLE tipos_produto(
--	id SERIAL PRIMARY KEY,
-- 	descricao CHARACTER VARYING(50) NOT NULL
-- );

-- CREATE TABLE produtos(
-- 	id SERIAL PRIMARY KEY,
-- 	descricao VARCHAR(50) NOT NULL,
-- 	preco MONEY NOT NULL,
-- 	id_tipo_produto INT REFERENCES tipos_produto(id) NOT NULL
-- );


-- INSERT em Tipos Produto

-- INSERT INTO tipos_produto (descricao) VALUES ('Computadores');
-- INSERT INTO tipos_produto (descricao) VALUES ('Impressoras');
-- INSERT INTO tipos_produto (descricao) VALUES ('Acessórios');


-- INSERT em Produtos

-- INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Laptop Dell', 2345.67, 1);
-- INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Impr. Jato de Tinta', 456.00, 2);
-- INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Mouse Razer', 149.99, 3);


-- SELECTS

-- SELECT * FROM tipos_produto;
-- SELECT id, descricao FROM tipos_produto;
-- SELECT * FROM produtos;

SELECT p.id AS "Código", p.descricao AS "Nome", p.preco AS "Preço", tp.descricao AS "Tipo"
FROM produtos AS p, tipos_produto AS tp
WHERE p.id_tipo_produto = tp.id;