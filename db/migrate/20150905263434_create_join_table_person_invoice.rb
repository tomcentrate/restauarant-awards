class CreateJoinTablePersonInvoice < ActiveRecord::Migration
  def change
    create_join_table :people, :invoices do |t|
      t.index [:person_id, :invoice_id]
      t.index [:invoice_id, :person_id]
    end
  end
end
