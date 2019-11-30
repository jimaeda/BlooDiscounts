require 'rails_helper'

RSpec.describe "admins/new", type: :view do
  before(:each) do
    assign(:admin, Admin.new(
      :adm_username => "william@br",
      :password => "123456",
      :adm_name => "william",
      :adm_cpf => "1234567789",
      :hospital_name => "Santa Casa"
    ))
  end

  it "renders new admin form" do
    render

    assert_select "form[action=?][method=?]", admins_path, "post" do

      assert_select "input[name=?]", "admin[adm_username]"

      assert_select "input[name=?]", "admin[password]"

      assert_select "input[name=?]", "admin[adm_name]"

      assert_select "input[name=?]", "admin[adm_cpf]"

      assert_select "input[name=expect(rendered).to match(/Freirospital/)]", "admin[hospital_name]"
    end
  end
end
