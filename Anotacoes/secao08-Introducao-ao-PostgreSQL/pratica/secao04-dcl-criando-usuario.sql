-- Criar um usuário

-- CREATE USER estagiario WITH PASSWORD '123456';

-- CREATE TABLE empresas(
-- 	id SERIAL PRIMARY KEY,
-- 	nome VARCHAR(50) NOT NULL,
-- 	funcionarios INT NOT NULL,
-- 	cidade VARCHAR(50) NOT NULL
-- );


-- Concedendo privilégios para o usuário estagiario

-- GRANT ALL ON empresas TO estagiario;

-- SELECT * FROM empresas;

-- GRANT USAGE, SELECT ON SEQUENCE empresas_id_seq TO estagiario;

-- REVOKE ALL ON empresas FROM estagiario;

-- GRANT SELECT ON empresas TO estagiario;

-- REVOKE ALL ON empresas FROM estagiario;

-- REVOKE USAGE, SELECT ON SEQUENCE empresas_id_seq FROM estagiario;

DROP USER estagiario;
