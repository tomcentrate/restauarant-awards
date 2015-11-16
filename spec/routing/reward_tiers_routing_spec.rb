require "rails_helper"

RSpec.describe RewardTiersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/reward_tiers").to route_to("reward_tiers#index")
    end

    it "routes to #new" do
      expect(:get => "/reward_tiers/new").to route_to("reward_tiers#new")
    end

    it "routes to #show" do
      expect(:get => "/reward_tiers/1").to route_to("reward_tiers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/reward_tiers/1/edit").to route_to("reward_tiers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/reward_tiers").to route_to("reward_tiers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/reward_tiers/1").to route_to("reward_tiers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/reward_tiers/1").to route_to("reward_tiers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/reward_tiers/1").to route_to("reward_tiers#destroy", :id => "1")
    end

  end
end
