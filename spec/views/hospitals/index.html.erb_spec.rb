require 'rails_helper'

RSpec.describe "hospitals/index", type: :view do
  before(:each) do
    assign(:hospitals, [
      Hospital.create!(
        :hosp_name => "Hosp Name",
        :hosp_city => "Hosp City",
        :hosp_state => "Hosp State",
        :a_plus => "9.99",
        :a_minus => "9.99",
        :b_plus => "9.99",
        :b_minus => "9.99",
        :o_plus => "9.99",
        :o_minus => "9.99",
        :ab_plus => "9.99",
        :ab_minus => "9.99"
      ),
      Hospital.create!(
        :hosp_name => "Hosp Name",
        :hosp_city => "Hosp City",
        :hosp_state => "Hosp State",
        :a_plus => "9.99",
        :a_minus => "9.99",
        :b_plus => "9.99",
        :b_minus => "9.99",
        :o_plus => "9.99",
        :o_minus => "9.99",
        :ab_plus => "9.99",
        :ab_minus => "9.99"
      )
    ])
  end

  it "renders a list of hospitals" do
    render
    assert_select "tr>td", :text => "Hosp Name".to_s, :count => 2
    assert_select "tr>td", :text => "Hosp City".to_s, :count => 2
    assert_select "tr>td", :text => "Hosp State".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
