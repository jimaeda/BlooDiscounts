require 'rails_helper'

RSpec.describe "hospitals/show", type: :view do
  before(:each) do
    @hospital = assign(:hospital, Hospital.create!(
      :name => "Name",
      :city => "City",
      :state => "State",
      :a+ => "9.99",
      :a- => "9.99",
      :b+ => "9.99",
      :b- => "9.99",
      :o+ => "9.99",
      :o- => "9.99",
      :ab+ => "9.99",
      :ab- => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
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
