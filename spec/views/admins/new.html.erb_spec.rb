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
    expect(rendered).to have_text('Criar Admin')
    assert_select "form[action=?][method=?]", admins_path, "post" do
    end
  end
end
