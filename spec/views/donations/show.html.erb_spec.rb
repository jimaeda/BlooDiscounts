require 'rails_helper'

RSpec.describe "donations/show", type: :view do
  before(:each) do
    @donation = assign(:donation, Donation.create!(
      :donation_date => "2019-01-01",
      :user_cpf => "User Cpf",
      :hospital_name => "Hospital Name",
      :donated_amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User Cpf/)
    expect(rendered).to match(/Hospital Name/)
    expect(rendered).to match(/9.99/)
  end
end
