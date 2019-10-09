require 'rails_helper'

RSpec.describe "donations/edit", type: :view do
  before(:each) do
    @donation = assign(:donation, Donation.create!(
      :donation_date => "2019-01-01",
      :user_cpf => "MyString",
      :hospital_name => "MyString",
      :donated_amount => "9.99"
    ))
  end

  it "renders the edit donation form" do
    render

    assert_select "form[action=?][method=?]", donation_path(@donation), "post" do

      assert_select "input[name=?]", "donation[user_cpf]"

      assert_select "input[name=?]", "donation[hospital_name]"

      assert_select "input[name=?]", "donation[donated_amount]"
    end
  end
end
