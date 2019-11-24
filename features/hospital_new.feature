#language: pt

Funcionalidade: Cadastro de Hospital
	Para que eu possa manter registro de um hospital
	Sendo um usuário
	Posso adicionar um hospital cadastrando no sistema com as suas informações.

	Cenario: Hospital cadastrado
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "99.99" e "99.99" e "50" e "50" e "50" e "50" e "50" e "50" e "50" e "50"
		Então eu devo ver a mensagem "Hospital was successfully created"

	Cenario: Hospital sem nome
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações '' e "São Paulo" e "São Paulo" e "99.99" e "99.99" e "50" e "50" e "50" e "50" e "50" e "50" e "50" e "50"
		Então eu devo ver a mensagem "Hosp name can't be blank"

	Cenario: Hospital sem cidade
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "" e "São Paulo" e "99.99" e "99.99" e "50" e "50" e "50" e "50" e "50" e "50" e "50" e "50"
		Então eu devo ver a mensagem "Hosp city can't be blank"

	Cenario: Hospital sem latitude
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "" e "99.99" e "50" e "50" e "50" e "50" e "50" e "50" e "50" e "50"
		Então eu devo ver a mensagem "Lattitude is not a number"

	Cenario: Hospital sem longitude
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "99.99" e "" e "50" e "50" e "50" e "50" e "50" e "50" e "50" e "50"
		Então eu devo ver a mensagem "Longitude is not a number"

	Cenario: Hospital sem estado
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "" e "99.99" e "99.99" e "50" e "50" e "50" e "50" e "50" e "50" e "50" e "50"
		Então eu devo ver a mensagem "Hosp state can't be blank"

	Cenario: Hospital sem tipo A positivo
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "99.99" e "99.99" e "" e "50" e "50" e "50" e "50" e "50" e "50" e "50"
		Então eu devo ver a mensagem "A plus can't be blank"

	Cenario: Hospital sem tipo A negativo
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "99.99" e "99.99" e "50" e "" e "50" e "50" e "50" e "50" e "50" e "50"
		Então eu devo ver a mensagem "A minus can't be blank"

	Cenario: Hospital sem tipo B positivo
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "99.99" e "99.99" e "50" e "50" e "" e "50" e "50" e "50" e "50" e "50"
		Então eu devo ver a mensagem "B plus can't be blank"

	Cenario: Hospital sem tipo B negativo
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "99.99" e "99.99" e "50" e "50" e "50" e "" e "50" e "50" e "50" e "50"
		Então eu devo ver a mensagem "B minus can't be blank"

	Cenario: Hospital sem tipo O positivo
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "99.99" e "99.99" e "50" e "50" e "50" e "50" e "" e "50" e "50" e "50"
		Então eu devo ver a mensagem "O plus can't be blank"

	Cenario: Hospital sem tipo O negativo
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "99.99" e "99.99" e "50" e "50" e "50" e "50" e "50" e "" e "50" e "50"
		Então eu devo ver a mensagem "O minus can't be blank"

	Cenario: Hospital sem tipo AB positivo
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "99.99" e "99.99" e "50" e "50" e "50" e "50" e "50" e "50" e "" e "50"
		Então eu devo ver a mensagem "Ab plus can't be blank"

	Cenario: Hospital sem tipo AB negativo
		Dado que eu entro na página de cadastro de hospitais
		Quando eu adiciono as informações "Hospital Geral" e "São Paulo" e "São Paulo" e "99.99" e "99.99" e "50" e "50" e "50" e "50" e "50" e "50" e "50" e ""
		Então eu devo ver a mensagem "Ab minus can't be blank"
