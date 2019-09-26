require 'rails_helper'

RSpec.describe "admins/index", type: :view do
  before(:each) do
    assign(:admins, [
      Admin.create!(
        :username => "Username",
        :encrypted_password => "Encrypted Password",
        :name => "Name",
        :cpf => "Cpf",
        :hospital_name => "Hospital Name"
      ),
      Admin.create!(
        :username => "Username",
        :encrypted_password => "Encrypted Password",
        :name => "Name",
        :cpf => "Cpf",
        :hospital_name => "Hospital Name"
      )
    ])
  end

  it "renders a list of admins" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Encrypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Hospital Name".to_s, :count => 2
  end
end
