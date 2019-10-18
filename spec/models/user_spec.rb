require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}" idk

  context "Testando view do usuário" do
    it "Cadastrar um usuario" do        # ação
      visit '/users/sign_up'            # caminho para cadastro do user

      within("#new_user") do #nome do form
        fill_in 'user_email', :with => 'user@example.com' # preenche cx de texto
        select 'O-', from: 'user_bloodtype' # preenche uma cx de seleção
        fill_in 'user_birthdate', :with => '1999/01/01'
        fill_in 'user_password', :with => '123456'
        fill_in 'user_password_confirmation', :with => '123456'
      end

      click_button 'commit' # clica no botão de Cadastrar
      expect(page).to have_content 'Welcome! You have signed up successfully.'
    end
  end

end
