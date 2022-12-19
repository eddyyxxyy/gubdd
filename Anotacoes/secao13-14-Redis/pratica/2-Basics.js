/*
Para visualizar todas as chaves disponíveis no servidor:

    KEYS *

É mais que indicado uma padronização na criação de chaves
do Redis. Por exemplo:

    SET "notas:17-06-2020:historia" 9.5

E manter esse padrão para as notas a partir disso.

Para encontrar chaves específicas (com o uso da padronização)
é só buscar da seguinte forma:

    KEYS "notas*"

O símbolo '*' representa qualquer coisa, ou seja, toda chave
que comece com a palavra 'notas' irá aprecer.

Mas para encontrar uma chave de uma data específica?

    KEYS "notas:*-06*"

O comando acima mostrará somente as chaves do mês 06.

Também podemos realizar consultas utilizando o símbolo de
interrogação '?'.

    KEYS "notas:*:????????"

O comando acima retornará somente as chaves que sejam notas e
que a última palavra (o nome da disciplina) tenham 8 caracteres.

Um formato sugerido para a padronização de chaves é:

    tipo:identificado:campo valor

E para encontrar chaves com diferentes datas?

    KEYS nota:*-0[46]*

O comando acima retornaria todas as chaves com datas que estejam
no mês 4 e 6.


Para armazenar diversos valores de uma única vez utilizamos o comando
MSET:

    MSET "notas:03-07-2021:portugues" 6 "notas:03-07-2021:matematica" 9.3 "notas:03-07-2021:historia" 8.7
 */