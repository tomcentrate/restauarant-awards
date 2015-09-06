require 'rails_helper'

RSpec.describe "rewards/index", type: :view do
  before(:each) do
    assign(:rewards, [
      Reward.create!(
        :name => "Name",
        :description => "Description",
        :cost => 1
      ),
      Reward.create!(
        :name => "Name",
        :description => "Description",
        :cost => 1
      )
    ])
  end

  it "renders a list of rewards" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
