require 'rails_helper'

RSpec.describe "admins/show", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :adm_username => "alexandrefreire",
      :password => "Password",
      :adm_name => "Alexandre Freire",
      :adm_cpf => "123456789",
      :hospital_name => "Hospital"
    ))
  end

  it "renders attributes" do
    render
    expect(rendered).to have_text('Perfil')
    expect(rendered).to have_text('Admin Username:')
    expect(rendered).to match(/alexandrefreire/)
    expect(rendered).to have_text('Nome do Admin:')
    expect(rendered).to match(/Alexandre Freire/)
    expect(rendered).to have_text('CPF do Admin:')
    expect(rendered).to match(/123456789/)
    expect(rendered).to have_text('Hospital responsável:')
    expect(rendered).to match(/Hospital/)
    expect(rendered).to have_button('Editar informações')
    expect(rendered).to have_link('Back')
  end
end
