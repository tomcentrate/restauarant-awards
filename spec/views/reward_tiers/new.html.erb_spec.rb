require 'rails_helper'

RSpec.describe "reward_tiers/new", type: :view do
  before(:each) do
    assign(:reward_tier, RewardTier.new(
      :name => "MyString"
    ))
  end

  it "renders new reward_tier form" do
    render

    assert_select "form[action=?][method=?]", reward_tiers_path, "post" do

      assert_select "input#reward_tier_name[name=?]", "reward_tier[name]"
    end
  end
end
