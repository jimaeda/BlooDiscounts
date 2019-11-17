require 'rails_helper'

RSpec.describe "rewards/index", type: :view do
  before(:each) do
    assign(:rewards, [
      Reward.create!(
        :name => "Name",
        :category => "Category",
        :quantity => 2,
        :cost => 3
      ),
      Reward.create!(
        :name => "Name",
        :category => "Category",
        :quantity => 2,
        :cost => 3
      )
    ])
  end

  it "renders a list of rewards" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
