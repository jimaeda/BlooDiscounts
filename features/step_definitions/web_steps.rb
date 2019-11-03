# Dado/Given

Dado('que eu entro na página de login do admin') do
    Admin.create(adm_username: "alexandrefreire", password: "123456", adm_name: "Alexandre Freire", adm_cpf: "123456", hospital_name: "Hospital")
    visit login_path
end

Dado('que eu entro na página de login') do
    FactoryBot.create(:user, email: 'nathan@nathan.com',password: 'nathan',first_name: 'Nathan')
	visit '/users/sign_in'
end

Dado("a página de cadastro do BlooDiscounts") do
    visit 'http://localhost:3000/users/sign_up'
end

# Quando/When

Quando('eu for para tela de edição de perfil') do
    find('input[value="Exibir perfil"]').click
    find('input[value="Editar informações"]').click
end

Quando('eu preencher os campos com senha antiga {string}') do |senha_antiga|
    fill_in 'user[current_password]', with: senha_antiga
end

Quando("preencher o campo com senha {string}") do |senha|
    fill_in 'admin[password]', with: senha
end  

Quando('eu faço login de admin com {string} e {string}') do |adm_username,password|
    fill_in "Admin Username", with: adm_username
    fill_in "Password", with: password
    find('input[name="commit"]').click
end

Quando('eu faço login com {string} e {string}') do |email,senha|
	fill_in 'user[email]', with: email
	fill_in 'user[password]', with: senha
	click_button 'Entrar'
end

Quando("preencher os campos com nome {string} e sobrenome {string}") do |nome, sobrenome|
    find('#user_first_name').set nome
    find('#user_last_name').set sobrenome
  end
  
Quando("peso {string}") do |peso|
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

Quando("clicar no botão Atualizar informações") do
    find('input[value="Atualizar informações"]').click
end

Quando("clicar no botão Submeter") do
    find('input[value="Submeter"]').click
end

Quando("acionar o botão cadastrar") do
    click_button 'Cadastrar'
end
  
# Então/Then

Então('eu devo ir para a página de admin') do
    expect(page).to have_no_field('Admin Username')
end
   
Então('eu devo ficar na página de login') do 
    expect(page).to have_field('Admin Username')
end

Então('eu devo ir para a página de perfil') do
	expect(page).to have_content 'Signed in successfully.'
end

Então('eu devo ver a mensagem {string}') do |mensagem|
	expect(page).to have_content mensagem
end

Então("o usuario sera autenticado") do
    # expect->rspec; page->capybara
    expect(page).to have_content @email
end

Então("devo ter a seguinte mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
end
  