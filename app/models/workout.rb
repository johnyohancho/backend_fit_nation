class Workout < ApplicationRecord
    has_many :workout_logs
    has_many :users, through: :workout_logs
end
