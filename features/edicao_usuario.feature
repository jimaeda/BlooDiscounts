#language pt

Funcionalidade: Editar informações de um usuário

Eu como usuário
Quero editar minhas informações cadastradas
Para que eu possa mantê-las atualizadas


Cenário: Usuário altera sua senha

Dado que esteja logado como Gabriel
E que eu esteja na página de edição de usuário
Quando preencher o campo Nova Senha com 123456
E preencher o campo Confirmar Senha com 123456
E acionar o botão Salvar
Então devo receber a mensagem: Dados atualizados com sucesso!

Cenário: Usuário erra a Nova Senha

Dado que eu esteja logado como Gabriel
E que eu esteja na página de edição de usuário
Quando preencher o campo Nova Senha com 123456
E preencher o campo Confirmar Senha com 123
E acionar o botão Salvar
Então devo receber a mensagem: As senhas não conferem!

Cenário: Usuário atualiza informações pessoais

Dado que eu esteja logado como Gabriel

Quando preencher o campo Peso como 50
E preencher o campo Altura como 164
E preencher o campo Cidade como São Paulo
E acionar o botão Salvar
Então devo receber a mensagem: Dados atualizados com sucesso!

Cenário: Usuário insere uma Data de Nascimento incorreta

Dado que eu esteja logado como Gabriel
E que eu esteja na página de edição de usuário
Quando preencher o campo Data Nascimento como 27072200
E acionar o botão Salvar
Então devo receber a mensagem: A Data de Nascimento incoerente.

Cenário: Usuário deixa um campo obrigatório em branco

Dado que eu esteja logado como Gabriel
E que eu esteja na página de edição de usuário
Quando preencher o campo País como
E preencher o campo Estado como
E preencher o campo Cidade como
E acionar o botão Salvar
Então devo receber a mensagem: Os campos com (*) são obrigatórios.
