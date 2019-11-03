Dado("a página de cadastro do BlooDiscounts") do
  visit 'http://localhost:3000/users/sign_up'
end

Quando("preencher os campos com nome {string} e sobrenome {string}") do |nome, sobrenome|
  find('#user_first_name').set nome
  find('#user_last_name').set sobrenome
end

Quando("idade {string} e peso {string}") do |idade, peso|
  find('#user_age').set idade
  find('#user_weight').set peso
end

Quando("altura {string} e email {string}") do |altura, email|
  @email = email
  find('#user_height').set altura
  find('#user_email').set email
end

Quando("tipo de sangue {string} e nascimento {string}") do |tipo_sangue, dt_nascimento|
  find('#user_bloodtype').set tipo_sangue
  find('#user_birthdate').set dt_nascimento
end

Quando("cidade {string} e estado {string}") do |cidade, estado|
  find('#user_city').set cidade
  find('#user_state').set estado
end

Quando("país {string}") do |pais|
  find('#user_country').set pais
end

Quando("senha {string} e confirmação {string}") do |senha, confirmaçao_senha|
  find('#user_password').set senha
  find('#user_password_confirmation').set confirmaçao_senha
end

Quando("acionar o botão cadastrar") do
  click_button 'Cadastrar'
end

Então("o usuario sera autenticado") do
  # expect->rspec; page->capybara
  expect(page).to have_content @email
end

Então("devo ter a seguinte mensagem {string}") do |mensagem|
  expect(page).to have_content mensagem
end
