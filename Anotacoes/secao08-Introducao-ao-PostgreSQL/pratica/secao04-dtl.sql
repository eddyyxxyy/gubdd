-- CREATE TABLE tipos_produto(
--	codigo SERIAL PRIMARY KEY,
--	descricao VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE produtos(
--	codigo SERIAL PRIMARY KEY,
--	descricao VARCHAR(50) NOT NULL,
--	preco MONEY NOT NULL,
--	codigo_tipo INT REFERENCES tipos_produto(codigo) NOT NULL
-- );

-- INSERT INTO tipos_produto (descricao) VALUES ('Computador');
-- INSERT INTO tipos_produto (descricao) VALUES ('Impressora');
-- INSERT INTO tipos_produto (descricao) VALUES ('Notebook');

-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', 1200, 1);
-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', 1800, 3);
-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Jato de Tinta', 690, 2);

SELECT * FROM tipos_produto;

-- BEGIN TRANSACTION;
--	INSERT INTO tipos_produto (descricao) VALUES ('Tipo C');
--	INSERT INTO tipos_produto (descricao) VALUES ('Tipo D');

-- Commit
-- COMMIT;


-- BEGIN TRANSACTION;
--	INSERT INTO tipos_produto (descricao) VALUES ('Tipo A');
--	INSERT INTO tipos_produto (descricao) VALUES ('Tipo B');

-- ROLLBACK;