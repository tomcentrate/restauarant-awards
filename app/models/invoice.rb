class Invoice < ActiveRecord::Base
  belongs_to :person
  DOLLAR_POINTS_CONVERSION = 10
  def calculate_points
    self.points = (total * DOLLAR_POINTS_CONVERSION).floor
    self.points
  end
end
