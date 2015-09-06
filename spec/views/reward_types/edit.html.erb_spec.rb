require 'rails_helper'

RSpec.describe "reward_types/edit", type: :view do
  before(:each) do
    @reward_type = assign(:reward_type, RewardType.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit reward_type form" do
    render

    assert_select "form[action=?][method=?]", reward_type_path(@reward_type), "post" do

      assert_select "input#reward_type_name[name=?]", "reward_type[name]"

      assert_select "input#reward_type_description[name=?]", "reward_type[description]"
    end
  end
end
