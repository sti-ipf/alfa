require "spec_helper"

describe LectureDaysController do
  describe "routing" do

    it "routes to #index" do
      get("/lecture_days").should route_to("lecture_days#index")
    end

    it "routes to #new" do
      get("/lecture_days/new").should route_to("lecture_days#new")
    end

    it "routes to #show" do
      get("/lecture_days/1").should route_to("lecture_days#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lecture_days/1/edit").should route_to("lecture_days#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lecture_days").should route_to("lecture_days#create")
    end

    it "routes to #update" do
      put("/lecture_days/1").should route_to("lecture_days#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lecture_days/1").should route_to("lecture_days#destroy", :id => "1")
    end

  end
end
