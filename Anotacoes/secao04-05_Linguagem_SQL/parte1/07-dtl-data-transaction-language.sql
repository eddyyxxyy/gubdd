a) Acessando o servidor com o usuário geek
sudo mysql -u geek -p

OBS: Senha do usuário sudo: amdk62500
	Senha mysql geek: university

b) Usando o banco de dados secao04
USE secao04;


c) Vamos consultar os dados da tabela tipos_produto;
SELECT * FROM tipos_produto;

d) Já temos a tabela tipos_produto, então podemos iniciar a transação;

-- Begin Transaction (no MYSQL usa-se START ao invés de BEGIN)
START TRANSACTION;

INSERT INTO tipos_produto (descricao) VALUES ('Notebook');
INSERT INTO tipos_produto (descricao) VALUES ('Nobreak');

A transação só finaliza quando o commit é adicionado;

-- Commit
COMMIT;

Vamos checar se os dados foram realmente salvos:
SELECT * FROM tipos_produto;

-- Roll Back

a) Vamos iniciar uma nova transação
START TRANSACTION;

b) Inserir uns dados (poderia ser insert, update, delete, etc)
INSERT INTO tipos_produto (descricao) VALUES ('Tablet');
INSERT INTO tipos_produto (descricao) VALUES ('Baterias');

Vamos checar se os dados foram salvos mesmo sem o commit:
SELECT * FROM tipos_produto;

Veja que aparentemente tudo está funcionando normalmente. Mas se tivéssemos efetuado o commit não teríamos
como fazer o rollback;

c) Efetuando o roll back
ROLLBACK;

Vamos checar se os dados foram desfeitos pelo rollback:
SELECT * FROM tipos_produto;

Sim!

OBS: Como o campo id da tabela é auto incremento, os dois inserts que fizemos descartaram os valores dos campos removidos.
Isso significa que os ids utilizamos não serão reutilizados.

Só para efeito de comparação, vamos iniciar uma nova transação, inserir dados e commitar e então tentar o rollback

a) Vamos iniciar uma nova transação
START TRANSACTION;

b) Inserir uns dados (poderia ser insert, update, delete, etc)
INSERT INTO tipos_produto (descricao) VALUES ('Tablet');
INSERT INTO tipos_produto (descricao) VALUES ('Baterias');

c) Commitar
COMMIT;

d) Consultar os dados
SELECT * FROM tipos_produto;

e) Tentar o rollback (Não é possível efetuar o rollback após commitar)
ROLLBACK;

f) Consultar os dados
SELECT * FROM tipos_produto;

Note que a transação não foi desfeita.

exit;