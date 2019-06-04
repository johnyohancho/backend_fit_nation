class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.integer :user_id
      t.string :name
      t.string :type
      t.date :date
      t.timestamp :time
      t.integer :calories
      t.integer :weight
      t.integer :protein
      t.integer :carbs
      t.integer :fat
      t.integer :sugar

      t.timestamps
    end
  end
end
