require 'rails_helper'

RSpec.describe "hospitals/edit", type: :view do
  before(:each) do
    @hospital = assign(:hospital, Hospital.create!(
      :hosp_name => "MyString",
      :hosp_city => "MyString",
      :hosp_state => "MyString",
      :lattitude => "9.99",
      :longitude => "9.99",
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

  it "renders the edit hospital form" do
    render

    assert_select "form[action=?][method=?]", hospital_path(@hospital), "post" do

      assert_select "input[name=?]", "hospital[hosp_name]"

      assert_select "input[name=?]", "hospital[hosp_city]"

      assert_select "input[name=?]", "hospital[hosp_state]"

      assert_select "input[name=?]", "hospital[lattitude]"

      assert_select "input[name=?]", "hospital[longitude]"

      assert_select "input[name=?]", "hospital[a_plus]"

      assert_select "input[name=?]", "hospital[a_minus]"

      assert_select "input[name=?]", "hospital[b_plus]"

      assert_select "input[name=?]", "hospital[b_minus]"

      assert_select "input[name=?]", "hospital[o_plus]"

      assert_select "input[name=?]", "hospital[o_minus]"

      assert_select "input[name=?]", "hospital[ab_plus]"

      assert_select "input[name=?]", "hospital[ab_minus]"
    end
  end
end
