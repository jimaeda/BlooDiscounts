require 'rails_helper'

RSpec.describe "donations/new", type: :view do
  before(:each) do
    assign(:donation, Donation.new(
      :user_cpf => "MyString",
      :hospital_name => "MyString",
      :donated_amount => "9.99"
    ))
  end

  it "renders new donation form" do
    render

    assert_select "form[action=?][method=?]", donations_path, "post" do
      assert_select "input[name=?]", "donation[user_cpf]"
      assert_select "input[name=?]", "donation[hospital_name]"
      assert_select "input[name=?]", "donation[donated_amount]"
    end
  end
end
