#language: pt
Funcionalidade: Acessar minha conta no BlooDiscounts
  Como um usuário doador,
  Eu quero fazer login no site
  A fim de acessar o site

Cenário: Fazendo login no BlooDiscounts com sucesso
  Dado a página de cadastro do BlooDiscounts
  Quando preencher os campos com "email1@exemplo.com" e "123456"
  E acionar o botão Entrar
  Então o usuario sera autenticado
  E devo ter a seguinte mensagem "Signed in successfully."

Cenário: Email ou senha inválida
  Dado a página de login do BlooDiscounts
  Quando preencher o email
  E acionar o botão Entrar
  Então devo ter a seguinte mensagem "Invalid Email or password."
