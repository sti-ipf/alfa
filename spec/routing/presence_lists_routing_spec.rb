require "spec_helper"

describe PresenceListsController do
  describe "routing" do

    it "routes to #index" do
      get("/presence_lists").should route_to("presence_lists#index")
    end

    it "routes to #new" do
      get("/presence_lists/new").should route_to("presence_lists#new")
    end

    it "routes to #show" do
      get("/presence_lists/1").should route_to("presence_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/presence_lists/1/edit").should route_to("presence_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/presence_lists").should route_to("presence_lists#create")
    end

    it "routes to #update" do
      put("/presence_lists/1").should route_to("presence_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/presence_lists/1").should route_to("presence_lists#destroy", :id => "1")
    end

  end
end
