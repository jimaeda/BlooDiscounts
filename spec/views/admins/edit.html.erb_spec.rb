require 'rails_helper'

RSpec.describe "admins/edit", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :adm_username => "Freire",
      :password => "123456",
      :adm_name => "Freire Alexandre",
      :adm_cpf => "123456789",
      :hospital_name => "Freirospital"
    ))
  end

  it "renders the edit admin form" do
    render
    expect(rendered).to have_text('Editar Informações')
    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do
      assert_select "input[name=?]", "admin[adm_username]"
      assert_select "input[name=?]", "admin[adm_name]"
      assert_select "input[name=?]", "admin[adm_cpf]"
      assert_select "input[name=?]", "admin[hospital_name]"
      assert_select "input[name=?]", "admin[password]"
    end
  end
end
