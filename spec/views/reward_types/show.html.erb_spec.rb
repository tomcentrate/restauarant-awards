require 'rails_helper'

RSpec.describe "reward_types/show", type: :view do
  before(:each) do
    @reward_type = assign(:reward_type, RewardType.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
