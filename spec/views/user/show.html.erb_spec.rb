require 'rails_helper'

RSpec.describe "user/show", type: :view do
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
          :state => "SPA",
          :country => "Brasil"
        ))
        allow(view).to receive(:current_user) { @user }
    end

  it "renders admin profile" do
    render
    expect(rendered).to have_text('Perfil')
    expect(rendered).to have_text('Nome:')
    expect(rendered).to match(/Alexandre Freire/)
    expect(rendered).to have_text('Email:')
    expect(rendered).to match(/alexandrefreire@ime.br/)
    expect(rendered).to have_text('Tipo sanguíneo:')
    expect(rendered).to match(/A+/)
    expect(rendered).to have_text('Data de nascimento:')
    expect(rendered).to match(/1998-01-01/)
    expect(rendered).to have_text('Idade:')
    expect(rendered).to have_text(Time.now.year - @user.birthdate.year)
    expect(rendered).to have_text('Peso:')
    expect(rendered).to match(/70/)
    expect(rendered).to have_text('Altura:')
    expect(rendered).to match(/1.79/)
    expect(rendered).to have_text('Cidade:')
    expect(rendered).to match(/SP/)
    expect(rendered).to have_text('Estado:')
    expect(rendered).to match(/SPA/)
    expect(rendered).to have_text('País:')
    expect(rendered).to match(/Brasil/)
    expect(rendered).to have_button('Editar informações')
    expect(rendered).to have_link('Voltar')
  end
end