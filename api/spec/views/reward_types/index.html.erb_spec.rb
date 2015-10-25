require 'rails_helper'

RSpec.describe "reward_types/index", type: :view do
  before(:each) do
    assign(:reward_types, [
      RewardType.create!(
        :name => "Name",
        :description => "Description"
      ),
      RewardType.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of reward_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
