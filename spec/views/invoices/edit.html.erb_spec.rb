require 'rails_helper'

RSpec.describe "invoices/edit", type: :view do
  before(:each) do
    @person = Person.create!()
    @invoice = assign(:invoice, Invoice.create!(person: @person))
  end

  it "renders the edit invoice form" do
    render

    assert_select "form[action=?][method=?]", invoice_path(@invoice), "post" do
    end
  end
end
