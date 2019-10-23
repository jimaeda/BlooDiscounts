require 'rails_helper'

RSpec.describe "sessions/new", type: :view do
  it "renders the login admin form" do
    render
    expect(rendered).to have_text('Administradores')
    assert_select "form[action=?][method=?]", login_path(@admin), "post" do
      assert_select "input[name=?]", "session[adm_username]"
      assert_select "input[name=?]", "session[password]"
    end
  end
end