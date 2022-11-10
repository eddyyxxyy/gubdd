-- CREATE DATABASE secao05;

CREATE TABLE tipos_produto(
	codigo INTEGER PRIMARY KEY AUTOINCREMENT,
	descricao TEXT NOT NULL
);

CREATE TABLE produtos(
	codigo INTEGER PRIMARY KEY AUTOINCREMENT,
	descricao TEXT NOT NULL,
	preco REAL NOT NULL,
	codigo_tipo INTEGER REFERENCES tipos_produto(codigo) NOT NULL
);


INSERT INTO tipos_produto (descricao) VALUES ('Computador');
INSERT INTO tipos_produto (descricao) VALUES ('Impressora');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', 1200, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', 1800, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Jato Tinta', 300, 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Laser', 500, 2);

-- Select
-- SELECT * FROM tipos_produto WHERE codigo = 1;

-- SELECT codigo, descricao FROM tipos_produto WHERE descricao = 'Computador';

-- SELECT * FROM produtos WHERE preco <= 300;

-- SELECT codigo, descricao, codigo_tipo FROM produtos WHERE descricao = 'Laptop';

-- Alias 
-- SELECT p.codigo AS cod, p.descricao AS desc, p.preco AS pre, p.codigo AS ctp FROM produtos AS p WHERE p.codigo = 3;