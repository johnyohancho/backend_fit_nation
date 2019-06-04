class CreateUserSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_settings do |t|
      t.integer :user_id
      t.integer :set_calories
      t.integer :set_steps
      t.decimal :set_protein_percent
      t.decimal :set_carb_percent
      t.decimal :set_fat_percent
      t.integer :set_protein_amount
      t.integer :set_carb_amount
      t.integer :set_fat_amount
      t.integer :set_sugar_amount

      t.timestamps
    end
  end
end
