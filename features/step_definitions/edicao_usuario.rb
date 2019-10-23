Dado /^.* logado como Gabriel$/ do
  email= 'gabriel@bloodiscounts.com'
  password = '123456'
  User.new(:email => email, :encrypted_password => password).save!

  visit 'http://localhost:3000/users/sign_in'

  find('#user_email').set email
  find('#user_password').set password

  click_button('Entrar')

end

Quando /^.* preencher o campo (.+) como (.*)$/ do |chave, valor|
  case chave:
  when 'Nova Senha'
    chave = '#input_nova_senha'
  when 'Confirmar Senha'
    chave = '#input_confirma_nova_senha'
  when 'Peso':
    chave = '#input_peso'
  when 'Altura':
    chave = '#input_altura'
  when 'Cidade':
    chave = '#input_cidade'
  when 'Data Nascimento':
    chave = '#input_data_nascimento'
  when 'País':
    chave = '#input_pais'
  when 'Estado':
    chave = '#input_estado'
  end

  find(chave).set valor
end

E /^.* preencher o campo (.+) como (.*)$/ do |chave, valor|
  case chave:
  when 'Nova Senha'
    chave = '#input_nova_senha'
  when 'Confirmar Senha'
    chave = '#input_confirma_nova_senha'
  when 'Peso':
    chave = '#input_peso'
  when 'Altura':
    chave = '#input_altura'
  when 'Cidade':
    chave = '#input_cidade'
  when 'Data Nascimento':
    chave = '#input_data_nascimento'
  when 'País':
    chave = '#input_pais'
  when 'Estado':
    chave = '#input_estado'
  end

  find(chave).set valor
end

E /acionar o botão (.+)$/ do |botao|
  click_button(botao)
end
