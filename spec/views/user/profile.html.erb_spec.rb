require 'rails_helper'

RSpec.describe "user/profile.html.erb", type: :view do
  before(:each) do
    @user = assign(:admin, User.create!(
      :first_name => "Alexandre",
      :last_name => "Freire",
      :email => "alexandrefreire@ime.br",
      :password => "Password",
      :weight => 70,
      :height => 1.79,
      :bloodtype => 1,
      :birthdate => "01-01-1998",
      :city => "SP",
      :state => "SP",
      :country => "Brasil"
    ))
    allow(view).to receive(:current_user) { @user }
  end

  it "renders user profile" do
    render
    expect(rendered).to have_text('Olá, Alexandre Freire')
    expect(rendered).to have_button('Resgatar pontos')
    # expect(rendered).to have_button('Hospitais próximos')
    expect(rendered).to have_button('Exibir perfil')
    expect(rendered).to have_button('Sair')
  end
end
