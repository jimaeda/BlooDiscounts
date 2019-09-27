require 'rails_helper'

RSpec.describe "admins/index", type: :view do
  before(:each) do
    assign(:admins, [
      Admin.create!(
        :adm_username => "Adm Username",
        :password => "Password",
        :adm_name => "Adm Name",
        :adm_cpf => "Adm Cpf",
        :hospital_name => "Hospital Name"
      ),
      Admin.create!(
        :adm_username => "Adm Username",
        :password => "Password",
        :adm_name => "Adm Name",
        :adm_cpf => "Adm Cpf",
        :hospital_name => "Hospital Name"
      )
    ])
  end

  it "renders a list of admins" do
    render
    assert_select "tr>td", :text => "Adm Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Adm Name".to_s, :count => 2
    assert_select "tr>td", :text => "Adm Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Hospital Name".to_s, :count => 2
  end
end
