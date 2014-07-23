class CreateMealItems < ActiveRecord::Migration
  def change
    create_table :meal_items do |t|
      t.integer :meal_id
      t.integer :edible_id
      t.integer :serving_size
      t.string :serving_unit
      t.integer :calories
      t.integer :fat_calories
      t.integer :total_fat
      t.integer :cholesterol
      t.integer :sodium
      t.integer :potassium
      t.integer :total_carbs
      t.integer :fiber
      t.integer :sugar
      t.integer :protein
    end
  end
end
