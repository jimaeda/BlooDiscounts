require 'rails_helper'

RSpec.describe "admins/edit", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :username => "MyString",
      :encrypted_password => "MyString",
      :name => "MyString",
      :cpf => "MyString",
      :hospital_name => "MyString"
    ))
  end

  it "renders the edit admin form" do
    render

    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do

      assert_select "input[name=?]", "admin[username]"

      assert_select "input[name=?]", "admin[encrypted_password]"

      assert_select "input[name=?]", "admin[name]"

      assert_select "input[name=?]", "admin[cpf]"

      assert_select "input[name=?]", "admin[hospital_name]"
    end
  end
end
