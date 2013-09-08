require "spec_helper"

describe RatersController do
  describe "routing" do

    it "routes to #index" do
      get("/raters").should route_to("raters#index")
    end

    it "routes to #new" do
      get("/raters/new").should route_to("raters#new")
    end

    it "routes to #show" do
      get("/raters/1").should route_to("raters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/raters/1/edit").should route_to("raters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/raters").should route_to("raters#create")
    end

    it "routes to #update" do
      put("/raters/1").should route_to("raters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/raters/1").should route_to("raters#destroy", :id => "1")
    end

  end
end
