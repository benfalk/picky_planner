class CreateUserFoods < ActiveRecord::Migration
  def change
    create_table :user_foods do |t|
      t.integer :user_id
      t.integer :food_id

      t.timestamps null: false
    end
    
    add_index :user_foods, [:user_id, :food_id], unique: true
  end
end
