-- CREATE DATABASE secao04;

-- Insert
INSERT INTO tipos_produto (descricao) VALUES ('Notebook');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Notebook', 1200, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('IPad', '2600', 1);

-- Update
UPDATE tipos_produto SET descricao = 'Nobreak' WHERE codigo = 3;

UPDATE produtos SET descricao = 'Notebook', preco = '2800' WHERE codigo = 2;

-- Cuidado Update (sem o WHERE)

-- Isso irá atualizar todos os registros da tabela
UPDATE produtos SET descricao = 'Notebook', preco = '2800';

-- Delete
DELETE FROM tipos_produto WHERE id = 3;

-- Cuidado Delete (sem o WHERE)

-- Isso irá deletar todos os registros da tabela
DELETE FROM produtos;