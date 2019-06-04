class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :name
      t.text :description
      t.string :gender
      t.integer :age
      t.integer :years_exp

      t.timestamps
    end
  end
end
