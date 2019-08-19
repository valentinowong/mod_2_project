class Game < ApplicationRecord
    has_many :missions
    has_many :game_rooms
end
