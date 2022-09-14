USE secao04;

No nosso bando de dados temos dois usuários: root e geek

Nós criamos o banco de dados secao04 e as tabelas tipos_produto e produtos com o usuário root, ou seja,
ele é o 'dono' do banco de dados;

Vamos logar no servidor com o usuário geek e tentar manipular este banco de dados;

a) Logar com qualquer usuário:

sudo mysql -u geek -p

OBS: Informar a senha do usuário geek

b) Vamos tentar usar o banco de dados secao04;
USE secao04;

Veja que podemos fazer acesso sem problemas pois na criação do usuário geek demos total
permissão a este usuário; Ele só tem menos permissões que o uruário administrador 'root'

c) Visualizando as tabelas:
SHOW TABLES;

d) Selecionando dados da tabela tipos_produto;
SELECT * FROM tipos_produto;

Nós conseguimos selecionar os dados;

O comando abaixo então não mudaria nada, já que atualmente
já conseguimos selecionar. 

-- Grant
GRANT SELECT ON tipos_produto TO geek;

Só quem pode atribuir ou remover permissões em um banco de dados é
o dono dele ou o administrador do banco de dados. Neste caso o dono é o usuário 'root'. 
Então vamos deslogar do banco de dados com o usuário 'geek',
logar no servidor com o usuário 'root' e revogar as permissões do usuário geek.

a) Deslogando com geek
exit;

b) Logando com root (mysql -u root -p)
sudo mysql

c) Fazendo acesso ao banco de dados secao04;
USE secao04;

c) Removendo o direito de consulta do usuário geek:

REVOKE ALL PRIVILEGES ON *.* FROM 'geek'@'localhost';
FLUSH PRIVILEGES;

d) Deslogando do servidor com o usuário root
exit;

e) Logando com usuário geek
sudo mysql -u geek -p

f) Usando o banco de dados secao04; (Já nem podemos ter acesso ao banco...(wndows?linux?))
USE secao04;

g) Tentando selecionar os dados da tabela tipos_produto;
SELECT * FROM tipos_produto;

Veja que o acesso foi negado.
Atualmente não podemos fazer nenhuma operação;

Recuperando as permissões;

a) Deslogando com usuário geek
exit;

b) Loganco com usuário root
sudo mysql

c) Garantindo as permissões
GRANT ALL PRIVILEGES ON *.* TO 'geek'@'localhost';
FLUSH PRIVILEGES;

Testando novamente;
a) Deslogando com usuário root;
exit;

b) Logando com usuário geek;
sudo mysql -u geek -p

c) Usando o banco de dados
USE secao04;

d) Selecionando dados;
SELECT * FROM tipos_produto;

exit;