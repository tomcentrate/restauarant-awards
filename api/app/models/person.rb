class Person < ActiveRecord::Base
  belongs_to :user
  has_many :invoices
  scope :ordered_by_last_name, -> { order(:last_name) }

  def full_name
    first_name + ' ' + last_name
  end
end
