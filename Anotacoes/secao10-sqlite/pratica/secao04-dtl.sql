-- Begin Transaction
BEGIN TRANSACTION;

	INSERT INTO tipos_produto (descricao) VALUES ('Notebook');
	INSERT INTO tipos_produto (descricao) VALUES ('Nobreak');

-- Commit
COMMIT;

BEGIN TRANSACTION;

INSERT INTO tipos_produto (descricao) VALUES ('Tablet');
INSERT INTO tipos_produto (descricao) VALUES ('Baterias');

SELECT * FROM tipos_produto;

ROLLBACK;

SELECT * FROM tipos_produto;

BEGIN TRANSACTION;

INSERT INTO tipos_produto (descricao) VALUES ('Tablet');
INSERT INTO tipos_produto (descricao) VALUES ('Baterias');

COMMIT;

SELECT * FROM tipos_produto;

ROLLBACK;

SELECT * FROM tipos_produto;

-- Note que a transação não foi desfeita após o commit.
