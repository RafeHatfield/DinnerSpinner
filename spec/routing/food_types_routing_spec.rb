require "spec_helper"

describe FoodTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/food_types").should route_to("food_types#index")
    end

    it "routes to #new" do
      get("/food_types/new").should route_to("food_types#new")
    end

    it "routes to #show" do
      get("/food_types/1").should route_to("food_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/food_types/1/edit").should route_to("food_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/food_types").should route_to("food_types#create")
    end

    it "routes to #update" do
      put("/food_types/1").should route_to("food_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/food_types/1").should route_to("food_types#destroy", :id => "1")
    end

  end
end
