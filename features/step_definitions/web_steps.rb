# Dado/Given

Dado("que eu entro na página de cadastro de hospitais") do
  visit '/hospitals/new'
end

Dado("que eu entro na página de cadastro de admins") do
  visit '/admins/new'
end

Dado('que eu entro na página de login do admin') do
    Admin.create(
        adm_username: "alexandrefreire",
        password: "123456",
        adm_name: "Alexandre Freire",
        adm_cpf: "123456",
        hospital_name: "Hospital"
    )
    Store.create(
        name: "Wallmart",
        category: "Comidas",
        address: "Rua dos Pinheiros",
        email: "email@email.com",
        phone: "1199999999"
    )
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

Quando("eu adiciono as informações {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string}") do
|hosp_name, hosp_city, hosp_state, lattitude, longitude, a_plus, a_minus, b_plus, b_minus, o_plus, o_minus, ab_plus, ab_minus|
  fill_in 'hospital[hosp_name]', with: hosp_name
  fill_in 'hospital[hosp_city]', with: hosp_city
  fill_in 'hospital[hosp_state]', with: hosp_state
  fill_in 'hospital[lattitude]', with: lattitude
  fill_in 'hospital[longitude]', with: longitude
  fill_in 'hospital[a_plus]', with: a_plus
  fill_in 'hospital[a_minus]', with: a_minus
  fill_in 'hospital[b_plus]', with: b_plus
  fill_in 'hospital[b_minus]', with: b_minus
  fill_in 'hospital[o_plus]', with: o_plus
  fill_in 'hospital[o_minus]', with: o_minus
  fill_in 'hospital[ab_plus]', with: ab_plus
  fill_in 'hospital[ab_minus]', with: ab_minus
  click_button 'Create Hospital'
end

Quando('eu preencher os campos da nova recompensa com nome {string}, categoria {string}, quantidade {string} e custo {string}') do |nome, categoria, quantidade, custo|
    find('input[id=store_rewards_attributes_0_category]').set categoria
    find('input[id=store_rewards_attributes_0_name]').set nome
    find('input[id=store_rewards_attributes_0_quantity]').set quantidade
    find('input[id=store_rewards_attributes_0_cost]').set custo 
end

Quando('eu preencher os campos da nova loja com nome {string}, categoria {string}, email {string}, endereço {string} e telefone {string}') do |nome, categoria, email, endereco, telefone|
    find('input[id=store_category]').set categoria
    find('input[id=store_name]').set nome
    find('input[id=store_email]').set email
    find('input[id=store_address]').set endereco
    find('input[id=store_phone]').set telefone 
end

Quando('eu for para tela de edição de perfil') do
    find('input[value="Exibir perfil"]').click
    find('input[value="Editar informações"]').click
end

Quando('eu for para tela de listagem de lojas e produtos') do
    find('input[value="Listar produtos de uma loja"]').click
    click_on "Mostrar/Editar loja e seus produtos"
end

Quando('eu for para tela de cadastro de lojas e produtos') do
    find('input[value="Cadastrar lojas"]').click
end

Quando('eu clicar em adicionar recompensa') do
    find('input[name="add_reward"]').click
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

Quando('eu preencher os campos do novo admin com email {string}, nome {string}, cpf {string} e password {string}') do |email, nome, cpf, password|
    find('input[id=admin_email]').set email
    find('input[id=admin_name]').set nome
    find('input[id=admin_cpf]').set cpf
    find('input[id=admin_password]').set password
end

# Então/Then

# Clicar no botão cadastrar
Então("devo clicar em create reward") do
    click_button "Create Reward"
end

# Cadastro com sucesso
Então("devo ir para a tela com os dados cadastrados e a mensagem {string}") do |string|
    expect(page).to have_content 'Recompensa cadastrada com sucesso.'
end

# Não houve cadastro
Então("devo continuar na tela de edição de loja e recompensas") do
    expect(page).to have_content 'Editar loja e suas recompensas'
end

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

# Clicar no botão cadastrar
Então("devo clicar em create admin") do
    click_button "Create Admin"
end

#Edita Usuário
Dado /^.* logado$/ do
  @email= "gabriel@bloodiscounts.com"
  @password = "123456"

  visit 'http://localhost:3000/users/sign_in'
  FactoryBot.create(:user, email: @email, password: @password,first_name: 'Marcus')
  find('#user_email').set @email
  find('#user_password').set @password

  click_button 'Entrar'
  expect(page).to have_content 'Signed in successfully.'

end

Quando /^.*preencher o campo (.+) como(.*)$/ do |chave, valor|

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

end

E /^.* página de edição de usuário$/ do
  click_button('Exibir perfil')
  click_button('Editar informações')
end

E /^clicar em (.+)$/ do |botao|
  find('#user_current_password').set @password
  click_button(botao)
end

Então /^devo receber a mensagem: (.+)$/ do |msg|
  expect(page).to have_content msg
end