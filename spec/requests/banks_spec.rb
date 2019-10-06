require 'rails_helper'

RSpec.describe "Banks", type: :request do
  describe "GET /banks" do
    it "works! (now write some real specs)" do
      get banks_path
      expect(response).to have_http_status(200)
    end
  end
end
