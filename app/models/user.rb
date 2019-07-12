class User < ApplicationRecord
    has_secure_password
    
    has_many :daily_snaps
    has_many :meals
    has_one :user_setting
    # has_many  :user_sessions
    # has_many :sessions, through: :user_sessions
    has_many :user_workouts
    has_many :workouts, through: :user_workouts
    # has_many :user_bets
    # has_many :bets, through: :user_bets
    # has_many :user_badges
    # has_many :badges, through: :user_badges


    has_many :active_relationships, class_name: 'Relationship',
                        foreign_key: 'follower_id',
                        dependent: :destroy
    has_many :passive_relationships, class_name: 'Relationship',
                        foreign_key: 'followed_id',
                        dependent: :destroy
    has_many  :following, through: :active_relationships, source: :followed
    has_many  :followers, through: :passive_relationships, source: :follower


    validates :username, presence: true
    # validates :password, presence: true
    validates :name, presence: true
    validates :email, presence: true


end
