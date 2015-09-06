require "rails_helper"

RSpec.describe Person, :type => :model do
  it "orders by last name" do
    lindeman = Person.create!(first_name: "Andy", last_name: "Lindeman")
    chelimsky = Person.create!(first_name: "David", last_name: "Chelimsky")

    expect(Person.ordered_by_last_name).to eq([chelimsky, lindeman])
  end
end
