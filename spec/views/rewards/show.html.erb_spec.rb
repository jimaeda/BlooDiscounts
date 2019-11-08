require 'rails_helper'

RSpec.describe "rewards/show", type: :view do
  before(:each) do
    @reward = assign(:reward, Reward.create!(
      :name => "Name",
      :category => "Category",
      :quantity => 2,
      :cost => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
