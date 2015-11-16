require 'rails_helper'

RSpec.describe "rewards/show", type: :view do
  before(:each) do
    @reward = assign(:reward, Reward.create!(
      :name => "Name",
      :description => "Description",
      :cost => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
  end
end
