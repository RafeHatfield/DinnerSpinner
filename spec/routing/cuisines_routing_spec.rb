require "spec_helper"

describe CuisinesController do
  describe "routing" do

    it "routes to #index" do
      get("/cuisines").should route_to("cuisines#index")
    end

    it "routes to #new" do
      get("/cuisines/new").should route_to("cuisines#new")
    end

    it "routes to #show" do
      get("/cuisines/1").should route_to("cuisines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cuisines/1/edit").should route_to("cuisines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cuisines").should route_to("cuisines#create")
    end

    it "routes to #update" do
      put("/cuisines/1").should route_to("cuisines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cuisines/1").should route_to("cuisines#destroy", :id => "1")
    end

  end
end
