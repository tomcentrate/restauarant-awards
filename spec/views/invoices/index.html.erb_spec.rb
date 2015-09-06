require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    @person = Person.create!(first_name: "Tommy", last_name: "Lee")
    assign(:invoices, [
      Invoice.create!(person: @person),
      Invoice.create!(person: @person)
    ])
  end

  it "renders a list of invoices" do
    render
  end
end
