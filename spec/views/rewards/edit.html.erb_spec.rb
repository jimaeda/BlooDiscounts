require 'rails_helper'

RSpec.describe "rewards/edit", type: :view do
  before(:each) do
    @reward = assign(:reward, Reward.create!(
      :name => "MyString",
      :category => "MyString",
      :quantity => 1,
      :cost => 1
    ))
  end

  it "renders the edit reward form" do
    render

    assert_select "form[action=?][method=?]", reward_path(@reward), "post" do

      assert_select "input[name=?]", "reward[name]"

      assert_select "input[name=?]", "reward[category]"

      assert_select "input[name=?]", "reward[quantity]"

      assert_select "input[name=?]", "reward[cost]"
    end
  end
end
