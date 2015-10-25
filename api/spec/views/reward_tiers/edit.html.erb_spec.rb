require 'rails_helper'

RSpec.describe "reward_tiers/edit", type: :view do
  before(:each) do
    @reward_tier = assign(:reward_tier, RewardTier.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit reward_tier form" do
    render

    assert_select "form[action=?][method=?]", reward_tier_path(@reward_tier), "post" do

      assert_select "input#reward_tier_name[name=?]", "reward_tier[name]"
    end
  end
end
