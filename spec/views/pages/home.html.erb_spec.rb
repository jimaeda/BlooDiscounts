require 'rails_helper'

RSpec.describe "pages/home.html.erb", type: :view do
  it "renders landing page" do
    render
    expect(rendered).to have_text('BlooDiscounts')
    expect(rendered).to have_button('Cadastrar')
    expect(rendered).to have_text('Já possui cadastro? ')
    expect(rendered).to have_link('Entre aqui.')
  end
end
