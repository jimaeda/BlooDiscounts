require 'rails_helper'

RSpec.describe "hospitals/index", type: :view do
  before(:each) do
    assign(:hospitals, [
      Hospital.create!(
        :hosp_name => "Hosp Name",
        :hosp_city => "Hosp City",
        :hosp_state => "Hosp State",
        :lattitude => "99.99",
        :longitude => "99.99",
        :a_plus => "1.0",
        :a_minus => "2.0",
        :b_plus => "3.0",
        :b_minus => "4.0",
        :o_plus => "5.0",
        :o_minus => "6.0",
        :ab_plus => "7.0",
        :ab_minus => "8.0"
      ),
      Hospital.create!(
        :hosp_name => "Hosp Name",
        :hosp_city => "Hosp City",
        :hosp_state => "Hosp State",
        :lattitude => "99.99",
        :longitude => "99.99",
        :a_plus => "1.0",
        :a_minus => "2.0",
        :b_plus => "3.0",
        :b_minus => "4.0",
        :o_plus => "5.0",
        :o_minus => "6.0",
        :ab_plus => "7.0",
        :ab_minus => "8.0"
      )
    ])
  end

  it "renders a list of hospitals" do
    render
    assert_select "tr>td", :text => "Hosp Name".to_s, :count => 2
    assert_select "tr>td", :text => "Hosp City".to_s, :count => 2
    assert_select "tr>td", :text => "Hosp State".to_s, :count => 2
    assert_select "tr>td", :text => "99.99".to_s, :count => 2
    assert_select "tr>td", :text => "99.99".to_s, :count => 2
    assert_select "tr>td", :text => "1.0".to_s, :count => 2
    assert_select "tr>td", :text => "2.0".to_s, :count => 2
    assert_select "tr>td", :text => "3.0".to_s, :count => 2
    assert_select "tr>td", :text => "4.0".to_s, :count => 2
    assert_select "tr>td", :text => "5.0".to_s, :count => 2
    assert_select "tr>td", :text => "6.0".to_s, :count => 2
    assert_select "tr>td", :text => "7.0".to_s, :count => 2
    assert_select "tr>td", :text => "8.0".to_s, :count => 2
  end
end
