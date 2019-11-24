#language:pt

Funcionalidade: Editar informações do usuário
	Como um usuário doador
    Para poder manter a consistência de dados
    Eu quero poder editar meus dados pessoais.

    Contexto:
        Dado que eu entro na página de login
        Quando eu faço login com "nathan@nathan.com" e "nathan"
        E eu for para tela de edição de perfil 

    Esquema do Cenário: Tentativas de editar informações
        Quando eu preencher os campos com senha antiga "<senha_antiga>"
        E senha "<senha>" e confirmação "<confirmação_senha>"
        E clicar no botão Atualizar informações
        Então eu devo ver a mensagem "<mensagem>"

    Exemplos:
        |senha|confirmação_senha|senha_antiga|mensagem|
        |123456|123456|nathan|Your account has been updated successfully.|
        |123456||nathan|Password confirmation doesn't match Password|
        |||nathan|Your account has been updated successfully.|
        |12345|12345|nathan|Password is too short (minimum is 6 characters)|
        |123456|123456||Current password can't be blank|