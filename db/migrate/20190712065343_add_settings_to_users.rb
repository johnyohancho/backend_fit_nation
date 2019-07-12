class AddSettingsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :set_calories, :integer
    add_column :users, :set_protein, :integer
    add_column :users, :set_carbs, :integer
    add_column :users, :set_fat, :integer
  end
end
