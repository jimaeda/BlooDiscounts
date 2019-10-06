require 'rails_helper'

RSpec.describe "admins/edit", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :adm_username => "MyString",
      :password => "MyString",
      :adm_name => "MyString",
      :adm_cpf => "MyString",
      :hospital_name => "MyString"
    ))
  end

  it "renders the edit admin form" do
    render

    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do

      assert_select "input[name=?]", "admin[adm_username]"

      assert_select "input[name=?]", "admin[password]"

      assert_select "input[name=?]", "admin[adm_name]"

      assert_select "input[name=?]", "admin[adm_cpf]"

      assert_select "input[name=?]", "admin[hospital_name]"
    end
  end
end
