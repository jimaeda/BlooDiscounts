Dado('que eu entro na página de login do admin') do
    Admin.create(adm_username: "alexandrefreire", password: "123456", adm_name: "Alexandre Freire", adm_cpf: "123456", hospital_name: "Hospital")
    visit login_path
end
   
Quando('eu faço login de admin com {string} e {string}') do |adm_username,password|
    fill_in "Admin Username", with: adm_username
    fill_in "Password", with: password
    find('input[name="commit"]').click
end
   
Então('eu devo ir para a página de admin') do
    expect(page).to have_no_field('Admin Username')
end

Então('eu devo ver a página com a mensagem {string}') do |mensagem|
    expect(page).to have_text(mensagem)
end
   
Então('eu devo ficar na página de login') do 
    expect(page).to have_field('Admin Username')
end