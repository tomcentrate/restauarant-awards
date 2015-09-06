require "rails_helper"

RSpec.describe Invoice, :type => :model do
  before(:each) do
    @invoice = Invoice.new
  end
  describe ".calculate_points" do
    it "should add points" do
      @invoice.total = 20
      @invoice.calculate_points
      expect(@invoice.points).to eq(@invoice.total * 10)
    end
  end
  it "orders by last name" do
    lindeman = Person.create!(first_name: "Andy", last_name: "Lindeman")
    chelimsky = Person.create!(first_name: "David", last_name: "Chelimsky")

    expect(Person.ordered_by_last_name).to eq([chelimsky, lindeman])
  end
end
