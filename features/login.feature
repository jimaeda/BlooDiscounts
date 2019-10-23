#language:pt

Funcionalidade: Login do usuário
	Para que eu posso usar as funcionalidades do serviço
	Sendo um usuário
	Posso acessar o sistema com meu email e minha senha já cadastrados.

	Cenario: Usuário autorizado
		Dado que eu entro na página de login
		Quando eu faço login com "nathan@nathan.com" e "nathan"
		Então eu devo ir para a página de perfil
		E eu devo ver a mensagem "Olá, Nathan"

	Cenario: Senha errada
		Dado que eu entro na página de login
		Quando eu faço login com "nathan@nathan.com" e "nath"
		Então eu devo ver a mensagem "Invalid Email or password."

	Cenario: Email não cadastrado
		Dado que eu entro na página de login
		Quando eu faço login com "leo@nathan.com" e "nathan"
		Então eu devo ver a mensagem "Invalid Email or password."

	Cenario: Email inválido
		Dado que eu entro na página de login
		Quando eu faço login com "leo" e "nathan"
		Então eu devo ver a mensagem "Invalid Email or password."
