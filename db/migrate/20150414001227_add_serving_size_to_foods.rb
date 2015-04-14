class AddServingSizeToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :serving_size, :string, default: ''
  end
end
