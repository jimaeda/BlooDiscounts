require 'rails_helper'

RSpec.describe "hospitals/index", type: :view do
  before(:each) do
    assign(:hospitals, [
      Hospital.create!(
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
      ),
      Hospital.create!(
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
      )
    ])
  end

  it "renders a list of hospitals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
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
