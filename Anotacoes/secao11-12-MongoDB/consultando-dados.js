db.inscricoes.insert(
	{
		"aluno": "Paula Fernandes",
		"data": new Date(),
		"curso": {
			"nome": "Programação para Internet"
		}
	}
)


db.inscricoes.insert(
	{
		"aluno": "Fernanda da Silva",
		"data": new Date(),
		"curso": {
			"nome": "Ciência da Computação"
		},
		"notas": [9.0, 7.0, 8],
		"skills": [
			{
				"nome": "Python",
				"nivel": "avançado"
			},
			{
				"nome": "Banco de Dados",
				"nivel": "avançado"
			}
		]
	}
)


db.inscricoes.insert(
	{
		"aluno": "Fabiano Perez",
		"data": new Date(),
		"curso": {
			"nome": "Programação para Internet"
		},
		"skills": [
			{
				"nome": "Python",
				"nivel": "básico"
			}
		]
	}
)


db.inscricoes.find(
	{
		"skills.nome": "Python"
	}
)


db.inscricoes.find(
	{
		"skills.nome": "Python",
		"skills.nivel": "avançado"
	}
)

// SELECT * FROM inscricoes AS i, skills AS s WHERE i.skill_id = s.id AND s.nome = 'Python' AND s.nivel = 'avançado';

db.inscricoes.find(
	{
		"curso.nome": "Programação para Internet"
	}
)


db.inscricoes.find(
	{
		$or: [
			{"curso.nome": "Ciência da Computação"},
			{"curso.nome": "Programação para Internet"}
		]
	}
)


db.inscricoes.find(
	{
		$or: [
			{"curso.nome": "Ciência da Computação"},
			{"curso.nome": "Programação para Internet"}
		],
		"aluno": "Fabiano Perez"
	}
)

db.inscricoes.find(
	{
		"nome": "Fabiano Perez"
	}
)


db.inscricoes.find(
	{
		"skills.nome": "Python",
		"skills.nivel": {
			$in: ["avançado", "intermediário"]
		}
	}
)

