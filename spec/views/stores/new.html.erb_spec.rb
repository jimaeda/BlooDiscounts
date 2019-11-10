require 'rails_helper'

RSpec.describe "stores/new", type: :view do
  before(:each) do
    assign(:store, Store.new(
      :name => "MyString",
      :category => "MyString",
      :address => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new store form" do
    render

    assert_select "form[action=?][method=?]", stores_path, "post" do

      assert_select "input[name=?]", "store[name]"

      assert_select "input[name=?]", "store[category]"

      assert_select "input[name=?]", "store[address]"

      assert_select "input[name=?]", "store[email]"

      assert_select "input[name=?]", "store[phone]"
    end
  end
end
