class User < ApplicationRecord
    has_many :daily_snaps
    has_many :meals
    has_one :user_setting
    # has_many  :user_sessions
    # has_many :sessions, through: :user_sessions
    has_many :workout_logs
    has_many :workouts, through: :workout_logs
    # has_many :user_bets
    # has_many :bets, through: :user_bets
    # has_many :user_badges
    # has_many :badges, through: :user_badges


    has_many :active_relationships, class_name: “Relationship”,
                        Foreign_key: “follower_id”,
                        Dependent: :destroy
    has_many :passive_relationships, class_name: “Relationship”,
                        Foreign_key: “followed_id”,
                        Dependent: :destroy
    has_many  :following, through: :active_relationships, source: :followed
    has_many  :followers, through: :passive_relationships, source: :follower

end
