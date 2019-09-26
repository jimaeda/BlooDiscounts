require 'rails_helper'

RSpec.describe "admins/new", type: :view do
  before(:each) do
    assign(:admin, Admin.new(
      :username => "MyString",
      :encrypted_password => "MyString",
      :name => "MyString",
      :cpf => "MyString",
      :hospital_name => "MyString"
    ))
  end

  it "renders new admin form" do
    render

    assert_select "form[action=?][method=?]", admins_path, "post" do

      assert_select "input[name=?]", "admin[username]"

      assert_select "input[name=?]", "admin[encrypted_password]"

      assert_select "input[name=?]", "admin[name]"

      assert_select "input[name=?]", "admin[cpf]"

      assert_select "input[name=?]", "admin[hospital_name]"
    end
  end
end
