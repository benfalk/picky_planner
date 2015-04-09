class CreateMealItems < ActiveRecord::Migration
  def change
    create_table :meal_items do |t|
      t.integer :meal_id
      t.integer :food_id
      t.float :servings

      t.timestamps null: false
    end
  end
end
