Dado('que eu entro na página de login do admin') do
    Admin.create(adm_username: "alexandrefreire", password: "123456", adm_name: "Alexandre Freire", adm_cpf: "123456", hospital_name: "Hospital")
    visit login_path
end

Dado('que eu entro na página de login') do
    FactoryBot.create(:user, email: 'nathan@nathan.com',password: 'nathan',first_name: 'Nathan')
	visit '/users/sign_in'
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