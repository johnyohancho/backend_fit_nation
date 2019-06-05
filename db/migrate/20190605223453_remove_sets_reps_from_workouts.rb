class RemoveSetsRepsFromWorkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :sets
    remove_column :workouts, :reps
  end
end
