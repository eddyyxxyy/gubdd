--CREATE DATABASE secao03;

-- No PostgreSQL não existe o comando USE database;
-- A gente seleciona o banco de dados que queremos
-- acessar já durante a conexão.

-- Exemplo:

-- psql -h localhost -p 5432 -U geek secao03


-- Tipos Produto
CREATE TABLE tipos_produto(
	id SERIAL PRIMARY KEY,
	descricao CHARACTER VARYING(50) NOT NULL
);


-- Produtos
CREATE TABLE produtos(
    id SERIAL PRIMARY KEY,
    descricao CHARACTER VARYING(50) NOT NULL,
    preco MONEY NOT NULL,
    id_tipo_produto INT REFERENCES tipos_produto(id) NOT NULL
);


-- Pacientes
CREATE TABLE pacientes(
	id SERIAL PRIMARY KEY,
	nome CHARACTER VARYING(50) NOT NULL,
	endereco CHARACTER VARYING(50) NOT NULL,
	bairro CHARACTER VARYING(50) NOT NULL,
	cidade VARCHAR(40) NOT NULL,
	estado CHAR(2) NOT NULL,
	cep VARCHAR(9) NOT NULL,
	data_nascimento DATE NOT NULL
);

CREATE TABLE professores(
	id SERIAL PRIMARY KEY,
	telefone INT NOT NULL,
	nome VARCHAR(80) NOT NULL
);

CREATE TABLE turmas(
	id SERIAL PRIMARY KEY,
	capacidade INT NOT NULL,
	id_professor INT REFERENCES professores(id) NOT NULL
);

