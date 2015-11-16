require 'rails_helper'

RSpec.describe "reward_types/new", type: :view do
  before(:each) do
    assign(:reward_type, RewardType.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new reward_type form" do
    render

    assert_select "form[action=?][method=?]", reward_types_path, "post" do

      assert_select "input#reward_type_name[name=?]", "reward_type[name]"

      assert_select "input#reward_type_description[name=?]", "reward_type[description]"
    end
  end
end
