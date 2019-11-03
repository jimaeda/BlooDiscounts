require 'rails_helper'

RSpec.describe "admins/profile", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :adm_username => "alexandrefreire",
      :password => "Password",
      :adm_name => "Alexandre Freire",
      :adm_cpf => "123456789",
      :hospital_name => "Hospital"
    ))
    allow(view).to receive(:current_admin) { @admin }
  end

  it "renders admin profile" do
    render
    expect(rendered).to have_text('Alexandre Freire')
    expect(rendered).to have_button('Registrar doação')
    expect(rendered).to have_button('Exibir estoque de sangue')
    expect(rendered).to have_button('Cadastrar lojas')
    expect(rendered).to have_button('Listar produtos de uma loja')
    expect(rendered).to have_button('Exibir perfil')
    expect(rendered).to have_button('Sair')
  end
end