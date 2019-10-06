require 'rails_helper'

RSpec.describe "banks/new", type: :view do
  before(:each) do
    assign(:bank, Bank.new(
      :name => "MyString",
      :address => "MyString",
      :adm => ""
    ))
  end

  it "renders new bank form" do
    render

    assert_select "form[action=?][method=?]", banks_path, "post" do

      assert_select "input[name=?]", "bank[name]"

      assert_select "input[name=?]", "bank[address]"

      assert_select "input[name=?]", "bank[adm]"
    end
  end
end
