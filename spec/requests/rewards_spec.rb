require 'rails_helper'

RSpec.describe "Rewards", type: :request do
  describe "GET /rewards" do
    it "works! (now write some real specs)" do
      get rewards_path
      expect(response).to have_http_status(200)
    end
  end
end
