class User < ApplicationRecord
    has_many :photos
    has_many :comments
    has_many :admin_game_rooms, foreign_key: "admin_id", class_name: "GameRoom"
    has_many :game_players, foreign_key: "player_id", class_name: "GamePlayer"
    has_many :game_rooms, through: :game_players

    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end