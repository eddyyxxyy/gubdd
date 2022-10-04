CREATE DATABASE secao05;

USE secao05;

CREATE TABLE tipos_produto (
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE produtos (
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    codigo_tipo INT NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto (codigo)
);


INSERT INTO tipos_produto (descricao) VALUES ('Computador');
INSERT INTO tipos_produto (descricao) VALUES ('Impressora');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', '1');
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', '1800', '1');
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Jato de Tinta', '300', '2');
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Laser', '500', '2');


-- Filtrando consultas com WHERE

SELECT * FROM produtos WHERE codigo_tipo = 1;
SELECT * FROM produtos WHERE codigo_tipo = 2;

SELECT * FROM produtos WHERE codigo_tipo = 2 AND preco > 300;


-- Consultas em multiplas tabelas

SELECT p.codigo AS 'ID', p.descricao AS 'Nome', p.preco as 'Preço', tp.descricao AS 'Tipo' 
	FROM produtos AS p, tipos_produto AS tp 
    WHERE tp.codigo = p.codigo_tipo;


-- 