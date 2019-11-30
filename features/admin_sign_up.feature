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
  E hospital "<hospital>"
  Então eu devo ver a mensagem "<mensagem>"

  Exemplos:
  |email|nome|cpf|senha|mensagem|hospital|
  |abcdef@gamil.com|supername|12371351711|12345|hospital|Password is too short (minimum is 6 characters)|
  |abcdef@gamil.com|supername|12371351711||hospital|Password can't be blank|
  ||supername|12371351711|123456|hospital|Email can't be blank|
  |abcdef@gamil.com||12371351711|123456|hospital|Name can't be blank|
  |abcdef@gamil.com|supername||123456|hospital|CPF can't be blank|
  |abcdef@gamil.com|supername|12371351711|123456||Hospital can't be blank|
  |abcdef@gamil.com|supername|12371351711|123456|hospital|Welcome! You have signed up successfully.|
