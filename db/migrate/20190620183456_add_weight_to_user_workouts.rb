class AddWeightToUserWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :user_workouts, :weight, :integer
  end
end
