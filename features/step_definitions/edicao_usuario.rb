Dado /^.* logado como Gabriel$/ do
  email= 'gabriel@bloodiscounts.com'
  password = '123456'

  visit 'http://localhost:3000/users/sign_in'

  find('#user_email').set email
  find('#user_password').set password

  click_button 'Entrar'
  sleep(4)
  save_and_open_page
end

Quando /^.*preencher o campo (.+) como (.*)$/ do |chave, valor|
  case chave
  when 'Senha Atual'
    chave = '#user_current_password'
  when 'Nova Senha'
    chave = '#user_password'
  when 'Confirmar Senha'
    chave = '#user_password_confirmation'
  when 'Peso'
    chave = '#user_weight'
  when 'Altura'
    chave = '#user_height'
  when 'Cidade'
    chave = '#user_city'
  when 'Data Nascimento'
    chave = '#user_birthdate'
  when 'País'
    chave = '#user_country'
  when 'Estado'
    chave = '#user_state'
  end

  find(chave).set valor
  save_and_open_page
end

E /^.* página de edição de usuário$/ do
  click_button('Editar Informações')
  sleep(4)
end

E /acionar o botão (.+)$/ do |botao:|
  click_button(botao)
end
