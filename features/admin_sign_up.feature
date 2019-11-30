#language: pt
Funcionalidade: Cadastrar um novo admin
  Como um administrador,
  Eu quero me cadastrar no site
  A fim de acessar o site

Contexto:
    Dado a página de cadastro do BlooDiscounts


Esquema do Cenário: Tentativas de Cadastro
  Quando preencher os campos com email "<email>" e nome "<nome>"
  E cpf "<cpf>" e senha "<senha>"
  E altura "<altura>" e email "<email>"
  E hospital "<sangue>"
  Então eu devo ver a mensagem "<mensagem>"

  Exemplos:
  |email|nome|cpf|senha|mensagem|
  |abcdef@gamil.com|supername|12371351711|12345|Password is too short (minimum is 6 characters)|
  |abcdef@gamil.com|supername|12371351711||Password can't be blank|
  ||supername|12371351711|123456|Email can't be blank|
  |abcdef@gamil.com||12371351711|123456|Name can't be blank|
  |abcdef@gamil.com|supername||123456|CPF can't be blank|
  |abcdef@gamil.com|supername|12371351711|123456|Welcome! You have signed up successfully.|
