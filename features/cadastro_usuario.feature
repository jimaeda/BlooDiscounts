#language: pt
Funcionalidade: Cadastrar um novo usuario
  Como um usuário doador,
  Eu quero me cadastrar no site
  A fim de acessar o site

Cenário: criando uma conta no BlooDiscounts com sucesso
  Dado a página de cadastro do BlooDiscounts
  Quando preencher os campos com "email1@exemplo.com" e "O-" e "1998-03-20" e "123456" e "123456"
  E acionar o botão cadastrar
  Então o usuario sera autenticado
  E devo ter a seguinte mensagem "Welcome! You have signed up successfully."
