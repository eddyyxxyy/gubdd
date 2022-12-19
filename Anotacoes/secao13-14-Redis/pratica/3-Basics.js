/*
No Redis, podemos trabalhar com um tipo de dado
chamado de Hashes, com eles podemos criar uma chave
e colocar diversos valores.

Na forma padrão colocariamos, por exemplo, um dado assim:

    SET "prova:21-06-2022:pedro:historia" 6.5
    SET "prova:21-06-2022:pedro:geografia" 8
    SET "prova:21-06-2022:pedro:fisica" 9.4
    SET "prova:21-06-2022:pedro:ingles" 8.7
    SET "prova:21-06-2022:pedro:matematica" 9

Assim teriamos chaves diferentes pra um mesmo aluno, como
fariamos para agrupar isso?

    HSET "prova:21-06-2022:pedro" "historia" 6.5
    HSET "prova:21-06-2022:pedro" "geografia" 8
    HSET "prova:21-06-2022:pedro" "fisica" 9.4
    HSET "prova:21-06-2022:pedro" "ingles" 8.7
    HSET "prova:21-06-2022:pedro" "matematica" 9

E para acessar esses dados fazemos:

    HGET "prova:21-06-2022:pedro" "historia"

O comando acima retornará o valor contido no campo "história" do
Hash "prova:21-06-2022:pedro". Mas se não lembrarmos todas as
provas que Pedro fez?

    HKEYS "prova:21-06-2022:pedro"

O comando acima retornará todos os campos presentes no Hash especificado.

Para remover chaves padrões utilizamos o comando DEL, mas para Hashes
utilizamos HDEL.

    HDEL "prova:21-06-2022:pedro" "ingles"

E para adicionar vários dados de uma única vez em Hashes?

    HMSET "prova:21-06-2022:angelina" "historia" 6.5 "geografia" 8 "fisica" 9.4 "ingles" 8.7 "matematica" 9

Não podemo utilizar compleções com '*', devemos sempre informar o
Hash por completo.

Como trazer todos os campos e valores de um Hash ao mesmo tempo?

    HGETALL "prova:21-06-2022:angelina"
 */