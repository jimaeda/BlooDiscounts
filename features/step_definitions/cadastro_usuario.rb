Dado("a página de cadastro do BlooDiscounts") do
  visit 'http://localhost:3000/users/sign_up'
end

@teste
Quando("preencher os campos com {string} e {string} e {string} e {string} e {string}") do |email, bloodtype, birthdate, password, password_confirmation|
  @email = email
  find('#user_email').set email         # # significa id
  find('#user_bloodtype').set bloodtype
  find('#user_birthdate').set birthdate
  find('#user_password').set password
  find('#user_password_confirmation').set password_confirmation
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
