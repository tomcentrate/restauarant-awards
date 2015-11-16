require 'rails_helper'

RSpec.describe "invoices/show", type: :view do
  before(:each) do
    @person = Person.create!()
    @invoice = assign(:invoice, Invoice.create!(person: @person))
  end

  it "renders attributes in <p>" do
    render
  end
end
