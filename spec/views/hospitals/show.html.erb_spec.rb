require 'rails_helper'

RSpec.describe "hospitals/show", type: :view do
  before(:each) do
    @hospital = assign(:hospital, Hospital.create!(
      :hosp_name => "Hosp Name",
      :hosp_city => "Hosp City",
      :hosp_state => "Hosp State",
      :lattitude => "99.99",
      :longitude => "99.99",
      :a_plus => "9.99",
      :a_minus => "9.99",
      :b_plus => "9.99",
      :b_minus => "9.99",
      :o_plus => "9.99",
      :o_minus => "9.99",
      :ab_plus => "9.99",
      :ab_minus => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hosp Name/)
    expect(rendered).to match(/Hosp City/)
    expect(rendered).to match(/Hosp State/)
    expect(rendered).to match(/99.99/)
    expect(rendered).to match(/99.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
