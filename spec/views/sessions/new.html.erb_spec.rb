require 'rails_helper'
  
describe "Successfull Login" do 
  it "Sucessful administrator login" do
    Admin.create(adm_username: "alexandrefreire", password: "123456", adm_name: "Alexandre Freire", adm_cpf: "123456", hospital_name: "Hospital")
    visit login_path
    fill_in "Adm username", with: 'alexandrefreire'
    fill_in "Password", with: '123456'
    find('input[name="commit"]').click
    expect(page).to have_content('Bem Vindo')
  end
end

describe "Unsuccessfull Login" do 
  it "Sucessful administrator login" do
    Admin.create(adm_username: "alexandrefreire", password: "123456", adm_name: "Alexandre Freire", adm_cpf: "123456", hospital_name: "Hospital")
    visit login_path
    fill_in 'Adm username', with: 'alexandrefreire'
    fill_in 'Password', with: '111111'
    find('input[name="commit"]').click
    expect(page).to have_no_content('Bem Vindo')
  end
end
