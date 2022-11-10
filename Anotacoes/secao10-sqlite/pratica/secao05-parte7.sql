-- CREATE DATABASE subconsulta;


CREATE TABLE escritorios(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	pais TEXT NOT NULL
);

CREATE TABLE funcionarios(
	id INTEGER PRIMARY KEY AUTOINCREMENT, 
	nome TEXT NOT NULL,
	sobrenome TEXT NOT NULL,
	id_escritorio INTEGER REFERENCES escritorios(id) NOT NULL
);

CREATE TABLE pagamentos(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	id_funcionario INTEGER REFERENCES funcionarios(id) NOT NULL,
	salario REAL NOT NULL,
	data TEXT NOT NULL
);


INSERT INTO escritorios (pais) VALUES ('Brasil');
INSERT INTO escritorios (pais) VALUES ('Estados Unidos');
INSERT INTO escritorios (pais) VALUES ('Alemanha');
INSERT INTO escritorios (pais) VALUES ('França');


INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Pedro', 'Souza', 1);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Sandra', 'Rubin', 2);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Mikail', 'Schumer', 3);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Olivier', 'Gloçan', 4);

INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (1, 5347.55, '2019-03-17');
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (2, 9458.46, '2019-03-17');
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (3, 4669.67, '2019-03-17');
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (4, 2770.32, '2019-03-17');


-- Exemplo 1
SELECT nome, sobrenome FROM funcionarios WHERE id_escritorio IN (SELECT id FROM escritorios WHERE pais = 'Brasil');

-- Sem subconsulta
SELECT nome, sobrenome FROM funcionarios, escritorios AS e WHERE id_escritorio = e.id AND e.pais = 'Brasil'; 

-- Exemplo 2
SELECT f.nome, f.sobrenome, e.pais, p.salario 
	FROM pagamentos AS p, funcionarios AS f, escritorios AS e
	WHERE f.id_escritorio = e.id 
		AND f.id = p.id_funcionario
		AND salario = (SELECT MAX(salario) FROM pagamentos);

-- Exemplo 3
SELECT f.nome, f.sobrenome, e.pais, p.salario 
	FROM pagamentos AS p, funcionarios AS f, escritorios AS e
	WHERE f.id_escritorio = e.id 
		AND f.id = p.id_funcionario
		AND salario < (SELECT AVG(salario) FROM pagamentos);

