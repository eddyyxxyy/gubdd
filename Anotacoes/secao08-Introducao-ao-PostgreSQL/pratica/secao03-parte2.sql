-- INSERTS

-- Tipos Produto

-- INSERT INTO tipos_produto (descricao) VALUES ('Computadores');
-- INSERT INTO tipos_produto (descricao) VALUES ('Impressoras');
-- INSERT INTO tipos_produto (descricao) VALUES ('Acessórios');

-- SELECT * FROM tipos_produto;


-- Produtos

-- INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Laptop Dell', 2345.67, 1);
-- INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Impr. Jato de Tinta', 456.00, 2);
-- INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Mouse Razer', 149.99, 3);

-- SELECT * FROM produtos;


-- Pacientes

-- INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
-- 	VALUES ('Edson Pimenta', 'Rua Abublé, 1234', 'Santo Agrião', 'Tocantins', 'SP', '12345-678', '2000-04-22');

-- SELECT * FROM pacientes;


-- Professores

-- INSERT INTO professores (nome, telefone) VALUES ('Tulio Martins', '16998765432');
-- INSERT INTO professores (nome, telefone) VALUES ('Marcos Pimenta', '16912345678');
-- INSERT INTO professores (nome, telefone) VALUES ('Isabela Gavião', '16987656789');

-- SELECT * FROM professores;


-- Turmas

-- INSERT INTO turmas (capacidade, id_professor) VALUES (30, 1);
-- INSERT INTO turmas (capacidade, id_professor) VALUES (25, 2);
-- INSERT INTO turmas (capacidade, id_professor) VALUES (35, 3);

-- SELECT * FROM turmas;
-- SELECT t.id, t.capacidade AS Capacidade, p.nome AS Professor
-- FROM turmas AS t, professores AS p
-- WHERE p.id = t.id_professor;