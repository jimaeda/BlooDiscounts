#language:pt

Funcionalidade: Notificar estoque de sangue baixo
	Para que eu possa ajudar mais bancos de sangue
	Sendo um usuário
	Posso ser notificado sobre bancos com pouco sangue do meu tipo ao acessar o sistema.

    Cenario: Um banco necessita de sangue 
        Dado que eu esteja logado como o usuario "Teste 1" 
        Quando o hospital "Banco Teste 1" estiver com pouco sangue  
        Então devo ver a mensagem "Banco Teste 1" 

    Cenario: Um banco não necessita de sangue 
        Dado que eu esteja logado como o usuario "Teste 1" 
        Quando o hospital "Banco Teste 2" estiver com pouco sangue
        Então não devo ver a mensagem "Banco Teste 2" 
