require "rails_helper"

RSpec.describe Invoice, :type => :model do
  before(:each) do
    @invoice = Invoice.new
  end
  describe ".calculate_points" do
    it "should give 0 points if no points set" do
      @invoice.calculate_points
      expect(@invoice.points).to eq(0)
    end
    it "should add points" do
      @invoice.total = 20
      @invoice.calculate_points
      expect(@invoice.points).to eq(@invoice.total * 10)
    end

  end
end
