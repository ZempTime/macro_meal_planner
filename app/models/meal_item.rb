class MealItem < ActiveRecord::Base

  belongs_to :meal
  belongs_to :edible

end

