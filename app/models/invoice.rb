class Invoice < ActiveRecord::Base
  belongs_to :person
  after_validation :calculate_points
  validate_presence_of :person

  DOLLAR_POINTS_CONVERSION = 10

  def calculate_points
    if self.total.nil?
      self.total = 0
    end
    self.points = (self.total * DOLLAR_POINTS_CONVERSION).floor
    self.points
  end
end
