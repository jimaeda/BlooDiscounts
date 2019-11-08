require 'rails_helper'

RSpec.describe "rewards/new", type: :view do
  before(:each) do
    assign(:reward, Reward.new(
      :name => "MyString",
      :category => "MyString",
      :quantity => 1,
      :cost => 1
    ))
  end

  it "renders new reward form" do
    render

    assert_select "form[action=?][method=?]", rewards_path, "post" do

      assert_select "input[name=?]", "reward[name]"

      assert_select "input[name=?]", "reward[category]"

      assert_select "input[name=?]", "reward[quantity]"

      assert_select "input[name=?]", "reward[cost]"
    end
  end
end
