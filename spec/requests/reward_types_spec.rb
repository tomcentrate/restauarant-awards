require 'rails_helper'

RSpec.describe "RewardTypes", type: :request do
  describe "GET /reward_types" do
    it "works! (now write some real specs)" do
      get reward_types_path
      expect(response).to have_http_status(200)
    end
  end
end
