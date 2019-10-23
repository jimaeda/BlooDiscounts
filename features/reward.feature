#language:pt

	Funcionalidade: login
	Para que minha loja seja visualizada pelos doadores.
	Sendo um dono de loja.
	Posso cadastrar recompensas que serão oferecidas aos doadores.

	Cenario: Recompensa cadastrada

		Dado que eu acesso o cadastro de recompensas
		Quando eu digitar "Banana", "Alimentos", 10 e 100
		Então devo clicar em create reward
		E devo ir para a tela com os dados cadastrados e a mensagem "Recompensa cadastrada com sucesso"

	Cenario: Nome incompleto

		Dado que eu acesso o cadastro de recompensas
		Quando eu digitar nada, "Alimentos", 10 e 100
		Então devo clicar em create reward
		E devo continuar na mesma tela

	Cenario: Categoria incompleto

		Dado que eu acesso o cadastro de recompensas
		Quando eu digitar "Banana", nada, 10 e 100
		Então devo clicar em create reward
		E devo continuar na mesma tela

	Cenario: Quantidade incompleto

		Dado que eu acesso o cadastro de recompensas
		Quando eu digitar "Banana", "Alimentos", nada e 100
		Então devo clicar em create reward
		E devo continuar na mesma tela

	Cenario: Valor incompleto

		Dado que eu acesso o cadastro de recompensas
		Quando eu digitar "Banana", "Alimentos", 10 e nada
		Então devo clicar em create reward
		E devo continuar na mesma tela
		
	Cenario: Texto em vez de valor

		Dado que eu acesso o cadastro de recompensas
		Quando eu digitar "Banana", "Alimentos", "t" e 100
		Então devo clicar em create reward
		E devo continuar na mesma tela

	Cenario: Texto em vez de Custo

		Dado que eu acesso o cadastro de recompensas
		Quando eu digitar "Banana", "Alimentos", 10 e "t"
		Então devo clicar em create reward
		E devo continuar na mesma tela

	Cenario: Quantidade negativo

		Dado que eu acesso o cadastro de recompensas
		Quando eu digitar "Banana", "Alimentos", -10 e 100
		Então devo clicar em create reward
		E devo continuar na mesma tela

	Cenario: Custo negativo

		Dado que eu acesso o cadastro de recompensas
		Quando eu digitar "Banana", "Alimentos", 10 e -100
		Então devo clicar em create reward
		E devo continuar na mesma tela