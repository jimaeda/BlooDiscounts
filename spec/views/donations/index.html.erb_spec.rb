require 'rails_helper'

RSpec.describe "donations/index", type: :view do
  before(:each) do
    assign(:donations, [
      Donation.create!(
        :donation_date => "2019-01-01",
        :user_cpf => "User Cpf",
        :hospital_name => "Hospital Name",
        :donated_amount => "9.99"
      ),
      Donation.create!(
        :donation_date => "2019-01-01",
        :user_cpf => "User Cpf",
        :hospital_name => "Hospital Name",
        :donated_amount => "9.99"
      )
    ])
  end

  it "renders a list of donations" do
    render
    assert_select "tr>td", :text => "User Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Hospital Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
