require "rails_helper"

RSpec.describe HospitalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/hospitals").to route_to("hospitals#index")
    end

    it "routes to #new" do
      expect(:get => "/hospitals/new").to route_to("hospitals#new")
    end

    it "routes to #show" do
      expect(:get => "/hospitals/1").to route_to("hospitals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hospitals/1/edit").to route_to("hospitals#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/hospitals").to route_to("hospitals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hospitals/1").to route_to("hospitals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hospitals/1").to route_to("hospitals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hospitals/1").to route_to("hospitals#destroy", :id => "1")
    end
  end
end
