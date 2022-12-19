/* Trabalhando com listas

Listas são estruturas de dados interessantes e
extremamente uteis.

Para criar e adicionar elementos em uma lista
(adicionar à esquerda, empurrando os outros
elementos, se existirem, para a direita):

    LPUSH "nome_da_lista" "elemento"

O comando acima significa Left Push, adicione
a esquerda.

Para acessar os elementos da lista criada podemos
utilizar o comando LINDEX, passando como parâmetros
o nome da lista e o índice buscado:

    LINDEX "nome_da_lista" 0

O comando acima irá retornar o último elemento
adicionado.

Para podermos checar o tamanho de uma lista
(a quantidade de elementos contidos nela), usamos
o comando LLEN:

    LLEN "nome_da_lista"

Agora, para adicionar um elemento ao final da lista
é bem intuítivo:

    RPUSH "nome_da_lista" "elemento"

Dessa forma adicionamos ao final da lista, com o Right
Push, adicione a direita.

Para acessarmos uma certa "fatia" dos elementos de uma
lista em Redis, podemos fazer:

    LRANGE "nome_da_lista" inicio final

O comando acima retornaria os elementos com indices entre
o "inicio" e "final" do Range. Se temos 5 elementos e colocamos
como início 0 e final 3, pegaremos os 4 primeiros filmes, deixando
um de fora.

E para RETIRARMOS da lista certos elementos e manter
somente os que desejamos? Podemos utilizar o LTRIM:

    LTRIM "nome_da_lista" inicio final

O comando acima fará com que, de todos os elementos da lista,
sejam mantidos somente os dados especificados entre os valores
de início e fim.
 */