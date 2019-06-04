class CreateDailySnaps < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_snaps do |t|
      t.integer :user_id
      t.date :date
      t.integer :steps
      t.decimal :weight
      t.integer :height
      t.decimal :bmi
      t.decimal :pbf
      t.string :img
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.integer :fat
      t.integer :sugar

      t.timestamps
    end
  end
end
