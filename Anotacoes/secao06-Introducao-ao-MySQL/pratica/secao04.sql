# DML - Data Manipulation Language

-- INSERT
INSERT INTO tipos_produto VALUES (NULL, 'Apple');
INSERT INTO produtos VALUES (NULL, 'MacBook Air', '5200', 3);
SELECT * FROM produtos;

-- UPDATE
UPDATE produtos SET codigo_tipo = 3 WHERE codigo = 6;
UPDATE produtos SET descricao = 'Impressora Laser', preco = '700' WHERE codigo = 4;

-- DELETE

DELETE FROM produtos WHERE codigo = 4;


# DDL - Data Definition Language

CREATE DATABASE mydb;

USE mydb;

CREATE TABLE pessoas (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO pessoas (nome) VALUES ('Felicity Jones');

SELECT * FROM pessoas;

-- ALTER
ALTER TABLE pessoas ADD ano_nascimento INT;
ALTER TABLE pessoas ADD mes_nascimento INT NOT NULL;

UPDATE pessoas SET mes_nascimento = 6 WHERE id = 1;