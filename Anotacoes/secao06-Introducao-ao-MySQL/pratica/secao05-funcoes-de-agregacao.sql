CREATE DATABASE agregacao;

USE agregacao;

CREATE TABLE categorias(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE produtos(
	id INT NOT NULL AUTO_INCREMENT, 
	descricao VARCHAR(60) NOT NULL,
	preco_venda DECIMAL(8,2) NOT NULL,
	preco_custo DECIMAL(8,2) NOT NULL,
	id_categoria int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);


INSERT INTO categorias (nome) VALUES ('Material Escolar');
INSERT INTO categorias (nome) VALUES ('Acessório Informática');
INSERT INTO categorias (nome) VALUES ('Material Escritório');
INSERT INTO categorias (nome) VALUES ('Game');

INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caderno', '5.45', '2.30', 1);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caneta', '1.20', '0.45', 1);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Pendrive 32GB', '120.54', '32.55', 2);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Mouse', '17.00', '4.30', 2);

SELECT * FROM produtos;

-- Funções de Agregação:

-- MAX():
SELECT id, descricao, preco_venda
FROM produtos
WHERE preco_venda = (SELECT MAX(preco_venda) FROM produtos);

SELECT MAX(preco_venda) FROM produtos;

-- MIN():
SELECT id, descricao, preco_custo
FROM produtos
WHERE preco_custo = (SELECT MIN(preco_custo) FROM produtos);

SELECT MIN(preco_custo) FROM produtos;


-- AVG() e ROUND():
SELECT id, descricao, preco_custo
FROM produtos
WHERE preco_custo < (SELECT AVG(preco_custo) FROM produtos);

SELECT ROUND(AVG(preco_custo), 2) FROM produtos;

-- ROUND():
SELECT ROUND(preco_custo, 1) FROM produtos WHERE preco_custo > 1;

-- COUNT():
SELECT COUNT(preco_venda) AS Quantidade FROM produtos WHERE id_categoria = 1;

-- GROUP BY:
SELECT id_categoria AS Categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria;

-- HAVING:
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria HAVING MAX(preco_venda) > 10;
