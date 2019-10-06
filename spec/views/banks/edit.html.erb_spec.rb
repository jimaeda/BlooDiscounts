require 'rails_helper'

RSpec.describe "banks/edit", type: :view do
  before(:each) do
    @bank = assign(:bank, Bank.create!(
      :name => "MyString",
      :address => "MyString",
      :adm => ""
    ))
  end

  it "renders the edit bank form" do
    render

    assert_select "form[action=?][method=?]", bank_path(@bank), "post" do

      assert_select "input[name=?]", "bank[name]"

      assert_select "input[name=?]", "bank[address]"

      assert_select "input[name=?]", "bank[adm]"
      
    end
  end
end
