class CreateMacroRequirements < ActiveRecord::Migration
  def change
    create_table :macro_requirements do |t|
      t.integer :total_calories
      t.integer :carbs
      t.integer :fat
      t.integer :protein
      t.integer :fiber
      t.integer :user_id
    end
  end
end
