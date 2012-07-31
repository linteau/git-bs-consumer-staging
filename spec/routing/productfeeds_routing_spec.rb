require "spec_helper"

describe ProductfeedsController do
  describe "routing" do

    it "routes to #index" do
      get("/productfeeds").should route_to("productfeeds#index")
    end

    it "routes to #new" do
      get("/productfeeds/new").should route_to("productfeeds#new")
    end

    it "routes to #show" do
      get("/productfeeds/1").should route_to("productfeeds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/productfeeds/1/edit").should route_to("productfeeds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/productfeeds").should route_to("productfeeds#create")
    end

    it "routes to #update" do
      put("/productfeeds/1").should route_to("productfeeds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/productfeeds/1").should route_to("productfeeds#destroy", :id => "1")
    end

  end
end
