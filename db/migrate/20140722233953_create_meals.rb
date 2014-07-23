class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :user_id
      t.integer :total_carbs
      t.integer :total_protein
      t.integer :total_fat
      t.integer :total_fiber
    end
  end
end
