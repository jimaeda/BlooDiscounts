#language: pt
Funcionalidade: Cadastrar um novo usuario
  Como um usuário doador,
  Eu quero me cadastrar no site
  A fim de acessar o site

Contexto:
    Dado a página de cadastro do BlooDiscounts


Esquema do Cenário: Tentativas de Cadastro
  Quando preencher os campos com nome "<nome>" e sobrenome "<sobrenome>"
  E peso "<peso>"
  E altura "<altura>" e email "<email>"
  E tipo de sangue "<sangue>" e nascimento "<dt_nascimento>"
  E cidade "<cidade>" e estado "<estado>"
  E país "<pais>"
  E senha "<senha>" e confirmação "<confirmação_senha>"
  E acionar o botão cadastrar
  Então devo ter a seguinte mensagem "<mensagem>"

  Exemplos:
  |nome|sobrenome|peso|altura|email|sangue|dt_nascimento|cidade|estado|pais|senha|confirmação_senha|mensagem|
  |Denise|Silva|70|1,70|email@pontocom|A-|1999-06-29|São Paulo|São Paulo|Brasil|123|123|Password is too short (minimum is 6 characters)|
  |Denise|Silva|70|1,70|email@pontocom|A-|1999-06-29|São Paulo|São Paulo|Brasil|987654|123456|Password confirmation doesn't match Password|
  |Denise|Silva|70|1,70|email@pontocom|A-|1999-06-29|São Paulo|São Paulo|Brasil|||Password can't be blank|
  |Denise|Silva|70|1,70||A-|1999-06-29|São Paulo|São Paulo|Brasil|123456|123456|Email can't be blank|
  |Denise|Silva|70|1,70|email@pontocom|A-|1999-06-29|São Paulo|São Paulo|Brasil|123456|123456|Welcome! You have signed up successfully.|
