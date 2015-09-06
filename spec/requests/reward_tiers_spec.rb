require 'rails_helper'

RSpec.describe "RewardTiers", type: :request do
  describe "GET /reward_tiers" do
    it "works! (now write some real specs)" do
      get reward_tiers_path
      expect(response).to have_http_status(200)
    end
  end
end
