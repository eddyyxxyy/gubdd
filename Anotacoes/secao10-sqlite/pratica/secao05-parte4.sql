-- CREATE DATABASE agregacao;

CREATE TABLE categorias(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nome TEXT NOT NULL
);

CREATE TABLE produtos(
	id INTEGER PRIMARY KEY AUTOINCREMENT, 
	descricao TEXT NOT NULL,
	preco_venda REAL NOT NULL,
	preco_custo REAL NOT NULL,
	id_categoria INTEGER REFERENCES categorias(id) NOT NULL
);


INSERT INTO categorias (nome) VALUES ('Material Escolar');
INSERT INTO categorias (nome) VALUES ('Acessório Informática');
INSERT INTO categorias (nome) VALUES ('Material Escritório');
INSERT INTO categorias (nome) VALUES ('Game');

INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caderno', 5.45, 2.3, 1);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caneta', 1.20, 0.45, 1);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Pendrive 32GB', 120.54, 32.55, 2);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Mouse', 17.00, 4.30, 2);

-- max
-- SELECT MAX(preco_venda) FROM produtos;

-- min
-- SELECT MIN(preco_venda) FROM produtos;

-- avg
-- SELECT AVG(preco_venda) FROM produtos;

-- round
-- SELECT ROUND(AVG(preco_venda), 3) FROM produtos;

-- count
-- SELECT COUNT(preco_venda) AS Quantidade FROM produtos WHERE id_categoria = 1;

-- group by
-- SELECT c.id, c.nome, MAX(p.preco_venda) FROM produtos AS p, categorias AS c WHERE c.id = p.id_categoria GROUP BY c.id;

-- having
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria HAVING MAX(preco_venda) > 10;

