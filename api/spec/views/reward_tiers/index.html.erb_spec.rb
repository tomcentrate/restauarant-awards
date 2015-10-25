require 'rails_helper'

RSpec.describe "reward_tiers/index", type: :view do
  before(:each) do
    assign(:reward_tiers, [
      RewardTier.create!(
        :name => "Name"
      ),
      RewardTier.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of reward_tiers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
