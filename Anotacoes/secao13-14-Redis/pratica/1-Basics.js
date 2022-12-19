/*
O Redis é um banco de dados não relacional baseado em chave-valor
com seus dados armazenados em memória (RAM), o que o faz ser extremamente
rápido.

Para se conectar ao servidor Redis com o terminal liberado
é necessário dar o seguinte comando:

    redis-server --daemonize yes

E então acessar o cliente, se conectando ao servidor:

    redis-cli

Para fechar o servidor:

    redis-cli shutdown

Ou se pode utilizar uma ferramenta gráfica, semelhante ao
MongoDB Compass ou pgadmin4.


Comandos básicos do Redis:

ECHO message
    Para ecoar uma mensagem no servidor.

SET key value
    Para setar um dado no servidor.

GET key
    Para resgatar um dado no servidor.
*/