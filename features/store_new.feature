#language:pt
Funcionalidade: Cadastro de Recompensa
	Para que minha loja seja visualizada pelos doadores
	Sendo um dono de loja
	Quero cadastrar minha loja.

	Contexto:
		Dado que eu entro na página de login do admin
		Quando eu faço login de admin com "alexandrefreire" e "123456"
		E eu for para tela de cadastro de lojas e produtos
	
	Esquema do Cenário: Tentativas de cadastro de recompensa
		Quando eu preencher os campos da nova loja com nome "<nome>", categoria "<categoria>", email "<email>", endereço "<endereco>" e telefone "<telefone>"
		E eu preencher os campos da nova recompensa com nome "Nome", categoria "Categoria", quantidade "1" e custo "1"
        E clicar no botão Submeter
		Então eu devo ver a mensagem "<mensagem>"

Exemplos: 
	|nome|categoria|email|endereco|telefone|mensagem|
	|Nome|Categoria|email@email.com|Endereço|99999999|Loja e produtos cadastrados com sucesso.|
	||Categoria|email@email.com|Endereço|99999999||
    |Nome||email@email.com|Endereço|99999999|Loja e produtos cadastrados com sucesso.|
    |Nome|Categoria||Endereço|99999999|Loja e produtos cadastrados com sucesso.|
    |Nome|Categoria|email@email.com||99999999||
    |Nome|Categoria|email@email.com|Endereço|||