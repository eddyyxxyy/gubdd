SELECT * FROM tipos_produto;

# DTL - Data Transaction Language

-- Transaction
START TRANSACTION;
	INSERT INTO tipos_produto (descricao) VALUES ('Acessórios');
	INSERT INTO tipos_produto (descricao) VALUES ('Equipamentos');
	INSERT INTO tipos_produto (descricao) VALUES ('Farmácia');
	INSERT INTO tipos_produto (descricao) VALUES ('Escritório');

-- COMMIT
COMMIT;

-- ROLLBACK
ROLLBACK;
