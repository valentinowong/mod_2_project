class GamePlayer < ApplicationRecord
    has_many :players, foreign_key: "player_id", class_name: "User"
end
