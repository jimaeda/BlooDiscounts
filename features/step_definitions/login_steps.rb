
Dado('que eu entro na página de login') do
	visit '/users/sign_in'
	FactoryBot.create(:user, email: 'nathan@nathan.com',password: 'nathan',first_name: 'Nathan')
end

Quando('eu faço login com {string} e {string}') do |email,senha|
	fill_in 'user[email]', with: email
	fill_in 'user[password]', with: senha
	click_button 'Entrar'
end

Então('eu devo ir para a página de perfil') do
	expect(page).to have_content 'Signed in successfully.'
end

Então('eu devo ver a mensagem {string}') do |mensagem|
	expect(page).to have_content mensagem
end	