#language:pt

Funcionalidade: Editar informações do admin
	Como um administrador de banco de sangue
    Para poder manter a consistência de dados
    Eu quero poder editar meus dados pessoais.

    Contexto:
        Dado que eu entro na página de login do admin

    Esquema do Cenário: Tentativas de editar informações
        Quando eu faço login de admin com "alexandrefreire" e "123456"
        E eu for para tela de edição de perfil
        E preencher o campo com senha "<senha>"
        E clicar no botão Submeter
        Então devo ter a seguinte mensagem "<mensagem>"

    Exemplos:
        |senha|mensagem|
        |123456||
        |12345|Password is too short (minimum is 6 characters)|
        ||Password can't be blank|