/*
 Como inserir um novo campo em um documento
 existente?
 */

db.inscricoes.update(
    {"_id": ObjectId("636e71f4bcb8e6efd1822d2c")},
    {
        $set: {
            "localizacao": {
                "endereco": "Avenida Zulmira Borba, 1978"
            }
        }
    }
)

/*
 Como utilizar coordenadas geográficas para
 armazenar informações de localização?

 Quando trabalhamos com coordenadas geográficas,
 precisamos ter um campo chamado "coordinates" e
 especificar o "type".
 */

db.inscricoes.update(
    {"_id": ObjectId("636e71f4bcb8e6efd1822d2c")},
    {
        $set: {
            "localizacao": {
                "endereco": "Avenida Zulmira Borba, 1978",
                "coordinates": [-20.380951, -54.580540],
                "type": "Point"
            }
        }
    }
)

/*
 Como importar dados para o banco de dados MongoDB:

 1 — Abra o terminal onde se encotra o arquivo com os dados;
 2 — Execute o seguinte comando:
    mongoimport -d meubanco -c minhacoleção --TipoDoArquivo < arquivo.extensão

 No nosso caso utilizamos:

 mongoimport -d meubanco -c inscricoes --jsonArray < inscricoes.json
 */

/*
 Como utilizar os recursos avançados do MongoDB para buscar
 dados por localização?

 Primeiro devemos informar ao MongoDB qual é o campo que deve
 ser utilizado como índice de busca. Para isso, faremos o seguinte:
 */

db.inscricoes.createIndex(
    {
        "localizacao": "2dsphere"
    }
)

/*
 Agora devemos realizar uma consulta utilizando agregação, para
 que os cálculos sejam aplicados (cálculos de latitude e longitude).
 */

db.inscricoes.aggregate(
    [
        {
            $geoNear: {
                "near": {
                    coordinates: [ -20.388008, -54.577546 ],
                    type: "Point"
                },
                "distanceField": "distancia.calculada",
                "spherical": true
            }
        },
        {$limit: 4}
    ]
)

/*
 Na consulta acima, estamos trazendo 4 resultados, sendo que o
 primeiro é o próprio elemento da busca. Caso queiramos ignorar
 o primeiro resultado, então devemos informar isso na consulta.
 */

db.inscricoes.aggregate(
    [
        {
            $geoNear: {
                "near": {
                    coordinates: [ -20.388008, -54.577546 ],
                    type: "Point"
                },
                "distanceField": "distancia.calculada",
                "spherical": true
            }
        },
        {$skip: 1},
        {$limit: 4}
    ]
)