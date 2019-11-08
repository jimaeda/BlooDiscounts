require 'rails_helper'

RSpec.describe "stores/edit", type: :view do
  before(:each) do
    @store = assign(:store, Store.create!(
      :name => "MyString",
      :category => "MyString",
      :address => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit store form" do
    render

    assert_select "form[action=?][method=?]", store_path(@store), "post" do

      assert_select "input[name=?]", "store[name]"

      assert_select "input[name=?]", "store[category]"

      assert_select "input[name=?]", "store[address]"

      assert_select "input[name=?]", "store[email]"

      assert_select "input[name=?]", "store[phone]"
    end
  end
end
