class Person < ActiveRecord::Base
  belongs_to :user
  has_many :invoices
  scope :ordered_by_last_name, -> { order(:last_name) }
end
