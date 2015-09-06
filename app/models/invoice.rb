class Invoice < ActiveRecord::Base
  belongs_to :person
  DOLLAR_POINTS_CONVERSION = 10
  def calculate_points
    if self.total.nil?
      self.total = 0
    end
    self.points = (self.total * DOLLAR_POINTS_CONVERSION).floor
    self.points
  end
end
