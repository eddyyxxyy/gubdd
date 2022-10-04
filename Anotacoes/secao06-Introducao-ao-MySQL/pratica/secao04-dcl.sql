SELECT * FROM produtos;

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Outro', '123', 2);
INSERT INTO tipos_produto (descricao) VALUES ('Outro');

UPDATE produtos SET preco = '456' WHERE codigo = 8;