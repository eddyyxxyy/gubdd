-- Create
-- CREATE DATABASE secao04;

-- Create
-- CREATE TABLE tipos_produto(
--	codigo SERIAL PRIMARY KEY,
--	descricao VARCHAR(30) NOT NULL
-- );

-- Create
-- CREATE TABLE produtos(
--	codigo SERIAL PRIMARY KEY, 
--	descricao VARCHAR(30) NOT NULL,
--	preco MONEY NOT NULL,
--	codigo_tipo INT REFERENCES tipos_produto(codigo) NOT NULL
-- );

-- Alter
-- ALTER TABLE tipos_produto ADD peso DECIMAL(8,2);

-- Verificando se o novo campo foi realmente adicionado
-- SELECT * FROM tipos_produto;


-- Drop (Não irá permitir deletar a tabel apor conter um relacionamento com produdos)
-- DROP TABLE tipos_produto;


-- mas podemos deletar todo o banco de dados
DROP DATABASE secao03;
