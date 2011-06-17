require "spec_helper"

describe WorldReadingsController do
  describe "routing" do

    it "routes to #index" do
      get("/world_readings").should route_to("world_readings#index")
    end

    it "routes to #new" do
      get("/world_readings/new").should route_to("world_readings#new")
    end

    it "routes to #show" do
      get("/world_readings/1").should route_to("world_readings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/world_readings/1/edit").should route_to("world_readings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/world_readings").should route_to("world_readings#create")
    end

    it "routes to #update" do
      put("/world_readings/1").should route_to("world_readings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/world_readings/1").should route_to("world_readings#destroy", :id => "1")
    end

  end
end
