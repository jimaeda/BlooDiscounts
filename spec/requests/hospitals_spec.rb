require 'rails_helper'

RSpec.describe "Hospitals", type: :request do
  describe "GET /hospitals" do
    it "works! (now write some real specs)" do
      get hospitals_path
      expect(response).to have_http_status(200)
    end
  end
end
