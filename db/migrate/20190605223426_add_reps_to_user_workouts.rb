class AddRepsToUserWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :user_workouts, :reps, :integer
  end
end
