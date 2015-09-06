class Invoice < ActiveRecord::Base
  belongs_to :person
  DOLLAR_POINTS_CONVERSION = 10
  def calculate_points
    points = (total * DOLLAR_POINTS_CONVERSION).floor
    points
  end
end
