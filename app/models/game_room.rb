class GameRoom < ApplicationRecord
    belongs_to :admin, class_name: "User", foreign_key: "admin_id"
    has_many :game_players
    has_many :players, through: :game_players, source: :user
end
