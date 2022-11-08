-- CREATE DATABASE secao04;

-- CREATE TABLE tipos_produto(
-- 	codigo INTEGER PRIMARY KEY AUTOINCREMENT,
-- 	descricao TEXT NOT NULL
-- );

-- CREATE TABLE produtos(
-- 	codigo INTEGER PRIMARY KEY AUTOINCREMENT,
-- 	descricao TEXT NOT NULL,
-- 	preco REAL NOT NULL,
-- 	codigo_tipo INTEGER REFERENCES tipos_produto(codigo) NOT NULL
-- );


-- INSERT INTO tipos_produto (descricao) VALUES ('Computador');
-- INSERT INTO tipos_produto (descricao) VALUES ('Impressora');

-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', 1);
-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', '1800', 1);
-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Jato Tinta', '300', 2);
-- INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Laser', '500', 2);


-- SELECTS

SELECT * FROM tipos_produto;

SELECT p.codigo AS Id, p.descricao AS Produto, p.preco AS Preço, t.descricao AS Tipo
    FROM produtos AS p, tipos_produto AS t
    WHERE t.codigo = p.codigo_tipo;