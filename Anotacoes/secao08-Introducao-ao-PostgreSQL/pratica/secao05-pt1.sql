-- CREATE TABLE tipos_produto(
-- 	id SERIAL PRIMARY KEY,
-- 	descricao VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE produtos(
-- 	id SERIAL PRIMARY KEY,
-- 	descricao VARCHAR(50) NOT NULL,
-- 	preco MONEY NOT NULL,
-- 	id_tipo_produto INT REFERENCES tipos_produto(id) NOT NULL
-- );

-- INSERT INTO tipos_produto (descricao) VALUES ('Computador');
-- INSERT INTO tipos_produto (descricao) VALUES ('Impressora');


-- INSERT INTO produtos (descricao, preco, id_tipo_produto)
-- VALUES ('Desktop', 1200, 1);

-- INSERT INTO produtos (descricao, preco, id_tipo_produto)
-- VALUES ('Laptop', 1800, 1);

-- INSERT INTO produtos (descricao, preco, id_tipo_produto)
-- VALUES ('Impr. Laser', 500, 2);

-- INSERT INTO produtos (descricao, preco, id_tipo_produto)
-- VALUES ('Impr. Jato de Tinta', 300, 2);

-- SELECT * FROM tipos_produto WHERE id = 1;
-- SELECT * FROM tipos_produto WHERE descricao = 'Impressora';

-- SELECT * FROM produtos WHERE id_tipo_produto = 1;

-- SELECT * FROM produtos WHERE preco <= 'R$500';
