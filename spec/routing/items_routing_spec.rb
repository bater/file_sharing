require "rails_helper"

RSpec.describe ItemsController, type: :routing do
  describe "routing" do
    it "routes to root" do
      expect(get: "/").to route_to("items#new")
    end

    it "routes to #new" do
      expect(get: "/items/new").to route_to("items#new")
    end

    it "routes to #show" do
      expect(get: "/1").to route_to("items#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/items").to route_to("items#create")
    end
  end
end
