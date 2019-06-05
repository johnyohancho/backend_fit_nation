class AddSetsToUserWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :user_workouts, :sets, :integer
  end
end
