require 'rails_helper'

RSpec.describe "hospitals/new", type: :view do
  before(:each) do
    assign(:hospital, Hospital.new(
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

  it "renders new hospital form" do
    render

    assert_select "form[action=?][method=?]", hospitals_path, "post" do

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
