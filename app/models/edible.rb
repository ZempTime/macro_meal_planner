class Edible < ActiveRecord::Base

  has_many :meal_items

end

