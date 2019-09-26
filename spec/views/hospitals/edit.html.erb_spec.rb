require 'rails_helper'

RSpec.describe "hospitals/edit", type: :view do
  before(:each) do
    @hospital = assign(:hospital, Hospital.create!(
      :name => "MyString",
      :city => "MyString",
      :state => "MyString",
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

  it "renders the edit hospital form" do
    render

    assert_select "form[action=?][method=?]", hospital_path(@hospital), "post" do

      assert_select "input[name=?]", "hospital[name]"

      assert_select "input[name=?]", "hospital[city]"

      assert_select "input[name=?]", "hospital[state]"

      assert_select "input[name=?]", "hospital[a+]"

      assert_select "input[name=?]", "hospital[a-]"

      assert_select "input[name=?]", "hospital[b+]"

      assert_select "input[name=?]", "hospital[b-]"

      assert_select "input[name=?]", "hospital[o+]"

      assert_select "input[name=?]", "hospital[o-]"

      assert_select "input[name=?]", "hospital[ab+]"

      assert_select "input[name=?]", "hospital[ab-]"
    end
  end
end
