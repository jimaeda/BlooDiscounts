#language:pt

Funcionalidade: Login Admin
    Para que eu posso usar as funcionalidades do serviço
    Sendo um admin
    Posso acessar o sistema com meu adm_username e minha senha já cadastrados.
    @temp
    Cenario: Admin autorizado
        Dado que eu entro na página de login
        Quando eu faço login com "alexandrefreire" e "123456"
        Então eu devo ir para a página de admin
        E eu devo ver a mensagem "Bem vindo"
        
    Cenario: Senha errada
        Dado que eu entro na página de login
        Quando eu faço login com "alexandrefreire" e "111111"
        Então eu devo ficar na página de login

    Cenario: Admin não existe
        Dado que eu entro na página de login
        Quando eu faço login com "leo@nathan.com" e "nathan"
        Então eu devo ficar na página de login