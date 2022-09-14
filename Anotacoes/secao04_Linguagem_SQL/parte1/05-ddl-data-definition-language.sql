-- Create
CREATE DATABASE secao04;

USE secao04;

-- Create
CREATE TABLE tipos_produto(
	codigo INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(30) NOT NULL,
	PRIMARY KEY (codigo)
);

-- Create
CREATE TABLE produtos(
	codigo INT NOT NULL AUTO_INCREMENT, 
	descricao VARCHAR(30) NOT NULL,
	preco DECIMAL(8,2) NOT NULL,
	codigo_tipo INT NOT NULL,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto(codigo)
);


-- Alter
ALTER TABLE tipos_produto ADD peso DECIMAL(8,2);

-- Verificando se o novo campo foi realmente adicionado
SELECT * FROM tipos_produto;


-- Drop (Não irá permitir deletar a tabel apor conter um relacionamento com produdos)
DROP TABLE tipos_produto;


-- mas podemos deletar todo o banco de dados
DROP DATABASE secao04;

exit;