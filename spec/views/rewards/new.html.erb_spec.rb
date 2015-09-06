require 'rails_helper'

RSpec.describe "rewards/new", type: :view do
  before(:each) do
    assign(:reward, Reward.new(
      :name => "MyString",
      :description => "MyString",
      :cost => 1
    ))
  end

  it "renders new reward form" do
    render

    assert_select "form[action=?][method=?]", rewards_path, "post" do

      assert_select "input#reward_name[name=?]", "reward[name]"

      assert_select "input#reward_description[name=?]", "reward[description]"

      assert_select "input#reward_cost[name=?]", "reward[cost]"
    end
  end
end
