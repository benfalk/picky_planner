class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.integer :protein
      t.integer :carbohydrates
      t.integer :fats
      t.integer :fiber

      t.timestamps null: false
    end
  end
end
