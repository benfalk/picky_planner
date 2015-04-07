class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.datetime :consumed_at
      t.integer :consumed_by
      t.integer :calories

      t.timestamps null: false
    end

    add_index :meals, :consumed_by
  end
end
