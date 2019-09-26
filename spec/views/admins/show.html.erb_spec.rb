require 'rails_helper'

RSpec.describe "admins/show", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :username => "Username",
      :encrypted_password => "Encrypted Password",
      :name => "Name",
      :cpf => "Cpf",
      :hospital_name => "Hospital Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Encrypted Password/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Hospital Name/)
  end
end
