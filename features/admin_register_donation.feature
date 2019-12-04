#language:pt
Funcionalidade: Cadastro de Recompensa
	Para que os usuários sejam incentivos a doarem sangue
	Sendo um dono de um banco de sangue
	Posso registrar doações de usuários recompensando-os com pontos.

	Contexto:
		Dado que eu entro na página de login do admin
		Quando eu faço login de admin com "alexandrefreire" e "123456"
		E eu for para tela de registrar doações

    Esquema do Cenário: Tentativa de registro de doações
        Quando eu preencher o id do usuário com "<id>"
        E clicar no botão registrar
        Então eu devo ver a mensagem "<mensagem>"

Exemplos:
    |id|mensagem|
    |1|Doação registrada.|
    |2|Usuário não encontrado.|
    ||Campo não pode estar vazio.|