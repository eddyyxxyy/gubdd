CREATE DATABASE secao04;

USE secao04;

CREATE TABLE tipos_produto(
	codigo INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(30) NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE produtos(
	codigo INT NOT NULL AUTO_INCREMENT, 
	descricao VARCHAR(30) NOT NULL,
	preco DECIMAL(8,2) NOT NULL,
	codigo_tipo int NOT NULL,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto(codigo)
);



-- Insert
INSERT INTO tipos_produto (descricao) VALUES ('Computador');
INSERT INTO tipos_produto (descricao) VALUES ('Impressora');
INSERT INTO tipos_produto (descricao) VALUES ('Notebook');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', '1800', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Jato Tinta', '300', 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Laser', '500', 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Notebook', '1200', 1);

-- Update
UPDATE tipos_produto set descricao = 'Nobreak' WHERE codigo = 3;

UPDATE produtos set descricao = 'Notebook', preco = '2800' WHERE codigo = 2;

-- Cuidado Update (sem o WHERE)

-- O MySQL Workbench não irá permitir, mas se fosse utilizando uma linguagem de programação, já era.
UPDATE produtos set descricao = 'Notebook', preco = '2800';

-- Delete
DELETE FROM tipos_produto WHERE codigo = 3;

-- Cuidado Delete (sem o WHERE)

-- O MySQL Workbench não irá permitir, mas se fosse utilizando uma linguagem de programação, já era.
DELETE FROM tipos_produto;

