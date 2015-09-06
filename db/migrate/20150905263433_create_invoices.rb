class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :person
      t.decimal :total, precision: 8, scale: 2
      t.integer :points
      t.datetime :ordered_at
      t.timestamps null: false
    end
  end
end
