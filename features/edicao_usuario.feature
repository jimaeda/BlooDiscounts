#language: pt


Funcionalidade: Editar informações de um usuário
Eu como usuário
Quero editar minhas informações cadastradas
Para que eu possa mantê-las atualizadas


Cenário: Usuário altera sua senha

Dado que esteja logado
E que eu esteja na página de edição de usuário
Quando preencher o campo Nova Senha como 123456
E preencher o campo Confirmar Senha como 123456
E preencher o campo Senha Atual como 123456
E clicar em Atualizar informações
Então devo receber a mensagem: Your account has been updated successfully

Cenário: Usuário erra a Nova Senha

Dado que eu esteja logado
E que eu esteja na página de edição de usuário
Quando preencher o campo Nova Senha como 123456
E preencher o campo Confirmar Senha como 123
E clicar em Atualizar informações
Então devo receber a mensagem: Password confirmation doesn't match Password

Cenário: Usuário atualiza informações pessoais

Dado que eu esteja logado
E que eu esteja na página de edição de usuário
Quando preencher o campo Peso como 50
E preencher o campo Altura como 164
E preencher o campo Cidade como São Paulo
E clicar em Atualizar informações
Então devo receber a mensagem: Your account has been updated successfully

#Cenário: Usuário insere uma Data de Nascimento incorreta

#Dado que eu esteja logado
#E que eu esteja na página de edição de usuário
#Quando preencher o campo Data Nascimento como 07272200
#E clicar em Atualizar informações
#Então devo receber a mensagem: Verifique sua Data de Nascimento

Cenário: Usuário deixa um campo obrigatório embranco

Dado que eu esteja logado
E que eu esteja na página de edição de usuário
Quando preencher o campo País como
E preencher o campo Estado como
E preencher o campo Cidade como
E clicar em Atualizar informações
Então devo receber a mensagem: Os campos com (*) são obrigatórios
