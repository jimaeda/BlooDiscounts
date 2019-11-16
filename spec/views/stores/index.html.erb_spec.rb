require 'rails_helper'

RSpec.describe "stores/index", type: :view do
  before(:each) do
    assign(:stores, [
      Store.create!(
        :name => "Nome",
        :category => "Categoria",
        :address => "Endereço",
        :email => "Email",
        :phone => "Contato"
      ),
      Store.create!(
        :name => "Nome",
        :category => "Categoria",
        :address => "Endereço",
        :email => "Email",
        :phone => "Contato"
      )
    ])
  end

  it "renders a list of stores" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
