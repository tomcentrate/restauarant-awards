require 'rails_helper'

RSpec.describe "reward_tiers/show", type: :view do
  before(:each) do
    @reward_tier = assign(:reward_tier, RewardTier.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
