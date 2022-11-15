/*
 Como buscar/filtrar dados de uma coleção com valores
 maiores que o especificado?

 Usamos o operador $gt:

 gt = Greater Than
 */

db.inscricoes.find(
    {
        'notas': {
            $gt: 8.0
        }
    }
)

/*
 E para encontrar notas maiores ou iguais ao valor
 especificado?

 Usamos o operador $gte
 */

db.inscricoes.find(
    {
        'notas': {
            $gte: 9.2
        }
    }
)

/*
 Vamos inserir mais dados na coleção:
 */

db.inscricoes.insertMany(
    [
        {
            "aluno": "Jair Rodrigues",
            "data_nascimento": new Date(1981, 06, 19),
            "curso": {
                "nome": "História",
                "notas": [6, 7, 8, 5.5]
            }
        },
        {
            "aluno": "Bruna Marqueze",
            "data_nascimento": new Date(1995, 02, 06),
            "curso": {
                "nome": "História",
                "notas": [10, 9.7, 6.5, 8.7]
            }
        }
    ]
)

/*
 Como fazer para buscar um único resultado dentre
 os possíveis?
 */

db.inscricoes.findOne(
    {
        "notas": {
            $gt: 7.7
        }
    }
)

/*
 Como ordenar a busca?

 O método sort() recebe um dado no estilo chave-valor, sendo
 a chave o campo onde queremos ordenar e o valor define se a
 ordenação será crescente ou decrescente.

 1 - Crescente;
 -1 - Decrescente.
 */

db.inscricoes.find().sort({"aluno": 1})

/*
 Limitando a busca:
 */

db.inscricoes.find().sort({"aluno": 1}).limit(2)