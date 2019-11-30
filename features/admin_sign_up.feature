#language: pt
Funcionalidade: Cadastrar um novo admin
  Como um administrador,
  Eu quero me cadastrar no site
  A fim de acessar o site


  Cenario: Cadastro com sucesso
    Dado que eu entro na página de cadastro de admins
    Quando eu adiciono as informações "abcdef@gamil.com" e "supername" e "12371351711" e "123456" e "hospital"  
    Então eu devo ver a mensagem "Admin was successfully created"

  Cenario: Cadastro sem email
    Dado que eu entro na página de cadastro de admins
    Quando eu adiciono as informações "" e "supername" e "12371351711" e "123456" e "hospital"  
    Então eu devo ver a mensagem "Email can't be blank"

  Cenario: Cadastro sem nome
    Dado que eu entro na página de cadastro de admins
    Quando eu adiciono as informações "abcdef@gamil.com" e "" e "12371351711" e "123456" e "hospital"  
    Então eu devo ver a mensagem "Name can't be blank"

  Cenario: Cadastro sem cpf
    Dado que eu entro na página de cadastro de admins
    Quando eu adiciono as informações "abcdef@gamil.com" e "supername" e "" e "123456" e "hospital"  
    Então eu devo ver a mensagem "CPF can't be blank"

  Cenario: Cadastro sem senha
    Dado que eu entro na página de cadastro de admins
    Quando eu adiciono as informações "abcdef@gamil.com" e "supername" e "12371351711" e "" e "hospital"  
    Então eu devo ver a mensagem "Password can't be blank"

  Cenario: Cadastro sem hospital
    Dado que eu entro na página de cadastro de admins
    Quando eu adiciono as informações "abcdef@gamil.com" e "supername" e "12371351711" e "123456" e ""  
    Então eu devo ver a mensagem "Hospital can't be blank"  

  Cenario: Cadastro com senha inválida
    Dado que eu entro na página de cadastro de admins
    Quando eu adiciono as informações "abcdef@gamil.com" e "supername" e "12371351711" e "123456" e "12345"  
    Então eu devo ver a mensagem "Password is too short (minimum is 6 characters)"  
