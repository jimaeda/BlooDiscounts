#language:pt
Funcionalidade: Cadastro de Recompensa
	Para que minha loja seja visualizada pelos doadores
	Sendo um dono de loja
	Posso cadastrar recompensas que serão oferecidas aos doadores.

	Contexto:
		Dado que eu entro na página de login do admin
		Quando eu faço login de admin com "alexandrefreire" e "123456"
		E eu for para tela de listagem de lojas e produtos
	
	Esquema do Cenário: Tentativas de cadastro de recompensa
		Quando eu clicar em adicionar recompensa
		E eu preencher os campos na nova recompensa com nome "<nome>", categoria "<categoria>", quantidade "<quantidade>" e custo "<custo>"
		E clicar no botão Submeter
		Então eu devo ver a mensagem "<mensagem>"

Exemplos: 
	|nome|categoria|quantidade|custo|mensagem|
	|Nome|Categoria|5|5|Atualizado loja e produtos com sucesso.|
	||Categoria|5|5||
	|Nome||5|5||
	|Nome|Categoria||5||
	|Nome|Categoria|5|||
	|Nome|Categoria|-5|5||
	|Nome|Categoria|5|-5||