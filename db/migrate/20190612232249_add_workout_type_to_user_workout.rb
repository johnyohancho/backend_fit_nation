class AddWorkoutTypeToUserWorkout < ActiveRecord::Migration[5.2]
  def change
    add_column :user_workouts, :workout_type, :string
  end
end
